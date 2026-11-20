# Prompt: Sereia para o Into Hadal Deep

Cole isto numa sessão nova do Claude Code com o repositório SocialQueiroz/SubRogue.

---

Quero que você adicione um inimigo novo ao meu jogo **Into Hadal Deep** (roguelike subaquático em pixel art, pt-BR, arquivo único `index.html` publicado no GitHub Pages). Leia o `TODO.md` e o `FAUNA.md` antes, pra entender o estilo e o que já existe.

## Como o código está organizado
- Tudo está em `index.html`. Os inimigos ficam no registro `SP` (espécies: `{id,n,a,b,d,hp,sp,r,c,g,mass,xp}`):
  - `b` é o comportamento: `BH[b](e,dt,ux,uy,d,sp)`;
  - `a` é o desenho: `DRAW[a](e,S,C)`.
- Funções úteis:
  - inimigos: `addE(id,x,y)`, `dmgE(e,d,a,kb,src,q)`, `kill(e)`;
  - jogador: `hurtP(dano,fonte)`;
  - cenário e movimento: `acc`, `seek`, `blocked(x,y,r)`, `hyp`;
  - efeitos visuais: `ftxt`, `burst`, `wglow`, `pt` (partículas);
  - mensagem do Tião: `radio(msg)`.
- Câmera: `camx`/`camy`. Tela lógica: `VW=320`, `VH≈190`. Tiles: `TS=16`, `map`, `MW`, `MH`.
- Pra adicionar coisas sem mexer no código antigo, o padrão é **embrulhar funções**:
  - `newLevel`: geração do andar;
  - `tickParry(dt)`: roda todo frame, serve de "update";
  - `drawParryFx()`: desenha no mundo;
  - `dmgE`.
  - Exemplo: `{const _x=newLevel;newLevel=function(){_x.apply(this,arguments); ...}}`. Coloque tudo num bloco `<script>` novo no fim, ou junto dos outros embrulhos, antes da linha `const _li=initProfiles();`.
- Parry (aparar):
  - o jogador aperta impulso duas vezes; durante a janela, `p.pt>0`;
  - tudo que é aparável é **roxo** (`PURP='#b04aff'`);
  - recompensas já prontas: `parryFlash(x,y,big)` e `parryWin(1)`.
- Arma branca: o jogador tem uma **faca** sempre disponível (tecla E troca; `WP.faca`, `WP[p.wp].melee`). O golpe corpo a corpo chama `dmgE(...,'sword',{kind:'sword'})`.
- Dificuldade: `p.diff` vale `facil`, `medio`, `dificil` ou `insano`.

## A sereia
1. **Visual lindo, em pixel art no estilo do jogo** (contorno escuro `OUT`, cores vivas), desenhado de lado e olhando pro jogador:
   - cabelo longo esvoaçando com ondulação;
   - tronco com top de conchas;
   - braço estendido cantando, boca abrindo quando solta a onda;
   - cauda de peixe com escamas e nadadeira translúcida ondulando;
   - brilho suave em volta.
2. **Muitas variações visuais**, sorteadas quando ela nasce:
   - cor do cabelo (ruivo, loiro, preto, prateado, azul, rosa, castanho);
   - tom de pele (do claro ao bem escuro, incluindo um tom azulado das profundezas);
   - paleta da cauda (turquesa, coral, roxo, dourado, azul-escuro e uma abissal escura com pintinhas que brilham, mais comum quanto mais fundo);
   - enfeite (coroa de conchas, estrela-do-mar, flor de hibisco, colar de pérolas ou nenhum).
3. **Ataque, as ondas do canto:**
   - de tempos em tempos (~2 s) ela canta e solta um **anel de onda sonora** que cresce a partir dela (~70 px/s, some perto de 220 px);
   - **cada onda que encosta no jogador tira 1 coração**, mesmo durante o impulso;
   - em cada anel há **1 ou 2 trechos ROXOS** (arcos de ~0,5 rad). Pelo menos um fica mais ou menos na direção do jogador, pra ser alcançável;
   - se o jogador **aparar (`p.pt>0`) exatamente no trecho roxo** quando a onda passa, ele atravessa sem dano: use `parryFlash`, `parryWin` e o texto "ATRAVESSOU!";
   - desenhe os anéis com notinhas musicais; os trechos roxos mais grossos, com brilho e faísca;
   - a onda atravessa parede.
4. **Só dá pra machucar de perto:**
   - tiro de longe não faz nada (a canção desvia; mostre isso com um efeito e um texto de vez em quando);
   - ela só leva dano se o jogador estiver a menos de ~50 px dela, ou se for dano de parry;
   - a ideia é o jogador ir **adentrando as ondas, aparando nos pontos roxos, e matar no corpo a corpo** (faca, espada, sabre ou machado).
5. **Comportamento:**
   - ela tenta manter distância, mas nada devagar;
   - quando o jogador chega muito perto, dá um rabo-de-peixe que empurra e foge um pouco;
   - de vez em quando solta um grito curto: um anel rápido e todo roxo;
   - vida moderada.
6. **Aparição:**
   - a partir de ~300 m;
   - no máximo 1 por andar, com chance (~30%, subindo com a profundidade);
   - não aparece no tutorial, na arena da orca nem no covil de chefe;
   - no primeiro encontro, o Tião avisa pelo rádio: tiro de longe não pega, atravessa aparando no roxo e bate de perto com a faca (E).
7. Ao morrer, deixa pérolas e moedas. Adicione uma conquista "Canto Silenciado" e uma entrada no `FAUNA.md`.

## Testes antes de entregar
- Teste num navegador headless (Playwright já vem instalado: `require('playwright')`):
  - zero erros de página;
  - a onda tira 1 coração;
  - aparar no roxo atravessa sem dano;
  - tiro de longe não machuca;
  - a faca de perto mata.
- Tire prints de várias variações dela pra eu ver.
- Para testar sem criar conta real na nuvem, troque no HTML de teste `const CLOUD={url:'...',key:'...'}` por `const CLOUD={url:'',key:''}`.
- Antes de começar uma partida, marque `META.tut=1` e `META.cs={intro:1}`, pra pular o tutorial e a cutscene.
- Faça commit e push na `main`.
