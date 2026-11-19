-- Into Hadal Deep: contas, saves e ranking
-- Cole tudo no Supabase em: SQL Editor -> New query -> Run

create table if not exists public.saves (
  user_id uuid primary key default auth.uid() references auth.users on delete cascade,
  name text not null,
  meta jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.saves enable row level security;
drop policy if exists "dono le" on public.saves;
drop policy if exists "dono cria" on public.saves;
drop policy if exists "dono altera" on public.saves;
create policy "dono le" on public.saves for select using (auth.uid() = user_id);
create policy "dono cria" on public.saves for insert with check (auth.uid() = user_id);
create policy "dono altera" on public.saves for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

create table if not exists public.scores (
  id bigint generated always as identity primary key,
  user_id uuid not null default auth.uid() references auth.users on delete cascade,
  name text not null check (char_length(name) between 3 and 16),
  depth int not null check (depth between 1 and 200),
  kills int not null default 0 check (kills >= 0),
  bosses int not null default 0 check (bosses between 0 and 20),
  won boolean not null default false,
  secs int not null default 0,
  created_at timestamptz not null default now()
);
alter table public.scores enable row level security;
drop policy if exists "todos leem" on public.scores;
drop policy if exists "dono registra" on public.scores;
create policy "todos leem" on public.scores for select using (true);
create policy "dono registra" on public.scores for insert with check (auth.uid() = user_id);
create index if not exists scores_created_idx on public.scores (created_at desc);

create or replace function public.top_scores(since timestamptz, lim int default 25)
returns table(name text, depth int, kills int, bosses int, won boolean, created_at timestamptz)
language sql stable as $$
  select s.name, s.depth, s.kills, s.bosses, s.won, s.created_at from (
    select distinct on (user_id) name, depth, kills, bosses, won, created_at
    from public.scores where created_at >= since
    order by user_id, depth desc, kills desc, created_at asc
  ) s order by s.depth desc, s.kills desc, s.created_at asc limit least(lim, 100);
$$;
grant execute on function public.top_scores(timestamptz, int) to anon, authenticated;
