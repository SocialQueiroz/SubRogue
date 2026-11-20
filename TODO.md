# Into Hadal Deep — lista de pedidos (pendências)

Anotado a partir do feedback do dono do jogo. Marcar [x] quando pronto.

## Interface
- [x] Corações de vida todos numa linha só (nada de 2 linhas)
- [x] Barra de oxigênio maior e clara ("OXIGÊNIO" + ícone de bolha) — testadores não entenderam que era O2

## Dificuldade
- [x] Modos ao começar: Fácil (10 corações), Médio (7), Difícil (5), Insano (3)
- [x] Cada modo muda dano, vida/resistência e agressividade dos bichos

## Loja e itens
- [x] Loja volta a ter SÓ 3 itens: 1 mercearia, 1 arma, 1 equipamento
- [x] Catálogo dobrado: armas 17→34, equipamentos 27→55 (saíram os de gancho), comidas 7→15
- [x] O Tião tem uma fala própria para cada item (armas, equipamentos, comidas e relíquias)
- [x] Rebalancear raridade dos artefatos: "Rastro de espinhos" e "Drone-baiacu" fortes demais pra comum/rara
- [x] 15 sinergias entre itens (Tempestade, Brasa Viva, Peste do Fundo, Inverno Abissal, Demolidor...); a loja avisa "★ Combina com..."

## Conteúdo
- [x] Mais inimigos e golpes: todos os 213 bichos têm característica real (ver FAUNA.md); já tinha: tartaruga-mordedora, tartaruga-verde, caravela, juba-de-leão, ctenóforo, polvo-gigante, peixe-baú
- [x] Ninhos de peixes no fim das correntezas (soltam peixes, destruíveis, dão moedas e às vezes baú)
- [x] Paredes explodíveis: bomba e minas agora abrem buraco na rocha de verdade (antes a bomba não quebrava nada)
- [x] Blocos que reagem a explosão: rocha rachada (moedas/pérola/baú), cristal (estilhaça em espinhos), metano (explode em cadeia), fóssil de amonite (pérolas), gelo de metano (congela)
- [x] Mais coisas interagíveis no cenário: anêmonas no chão/teto, ouriços, mariscos gigantes, coral-de-fogo, anêmona elétrica, bolsas de ar, pepino-do-mar
- [x] Redemoinho de pressão negativa: refeito como espiral vermelha girando

## Música
- [x] Trilha muda em degradê gradual conforme a profundidade (não ficar na mesmice)

## Banco de dados / nuvem
- [x] Supabase ligado: contas, saves e ranking online funcionando (testado de ponta a ponta)

## Bugs vistos
- [x] Baú grande aparecia quebrado (retângulo marrom) no fim das correntezas — trocado por baús pequenos
- [x] Bordas do mapa mostravam água vazia fora do mapa — câmera presa dentro do mapa
- [x] Rótulo OXIGÊNIO quebrando em 2 linhas

## Tubarões-baleia e Orca (pedido novo)
- [x] Renderizadores próprios do tubarão-baleia e da orca (prévia enviada)
- [x] Cutscene aos 300 m e a cada 1000 m: chegar perto/atirar → bando de tubarões-baleia para na frente, brinca e fala ("tá indo bem... raro ver alguém com sua determinação")
- [x] Toda cutscene termina com eles fugindo de uma orca
- [x] 0,1% por corrida: portal secreto após a cena dos tubarões-baleia leva à luta contra a Orca (conquista "Lenda do Abismo")

## Banco de dados
- [x] (PocketBase descartado; ficou Supabase)
- [x] Tubarões-baleia soltam coraçõezinhos e regeneram toda a vida
- [x] Luta secreta da Orca feita

## Orca (feedback novo)
- [x] Orca com 4 fases (Caçada, Carrossel, Matilha, Fúria do Abismo), rugido e golpes novos por fase
- [x] Animação da orca: boca abrindo com dentes, cauda batendo, cicatrizes, olho vermelho na fúria, morte afundando
- [x] IA esperta (prevê o jogador, finta, carrossel de bolhas, filhotes flanqueando, mergulho surpresa, pune quem fica parado): — cercar, fingir recuar, emboscar, usar ondas/bolhas pra encurralar, prever a posição do jogador, chamar o "grupo" (filhotes) numa fase

## Pedidos novos (feitos)
- [x] Caranguejo-chefe extra no fim dos 300 m no Difícil/Insano
- [x] Tartarugas: mordida esticando o pescoço; com pouca vida entram no casco, giram quicando 3 vezes e ficam escondidas até morrer
- [x] Águas-vivas com tentáculos longos que fluem e queimam
- [x] Polvo-gigante que agarra (impulso solta)
- [x] Peixe-baú disfarçado de baú
- [x] Menu enxuto: Novo jogo, Como jogar, Tutorial, Conquistas (com Ranking e Álbum), Configurações (com Vestiário); estaleiro fora do menu
- [x] Tutorial obrigatório antes da primeira partida da conta
- [x] Tião no barco do menu

## História
- [x] Cutscene do Tião antes da primeira partida (o mergulhador anterior morreu; cada peixe dá dinheiro; descer até o fundo das fossas)
- [x] Mais cenas: primeira loja, primeiro covil de chefe, primeiro chefe derrubado, primeira morte, 1.000/3.000/6.000/9.000 m (história do irmão do Tião) e vitória
- [x] Estaleiro (gastar pérolas) voltou: botão na tela de dificuldade

## Balanço (feedback novo)
- [x] Relíquias enfraquecidas (Leviatã, Olho, Coroa, Concha, Dente, Isca, Escama, Guelra, Baiacu, Rede, Sino, Garrafa, Meteoro, Lanterna); Casco de tartaruga sem armadura fixa
- [x] Relíquia fora de chefe: rara (15% nos primeiros andares) e limitada por corrida — antes ~6 relíquias nos 4 primeiros andares, agora ~0,7
- [x] Subir de nível mais devagar (nível 4–5 no 4º andar, antes 7–9) e artefatos épicos/lendários raros no começo, ficando comuns só lá no fundo
- [x] Fenda de descida nunca dentro de correnteza (antes 30% das fendas tinham, agora 0 em 150 testadas); redemoinhos também saem de perto da saída

## Relíquias e itens (feedback novo)
- [x] 119 relíquias (eram 20): 6 trocam sua arma (espada, sabre, machado, canhão, tridente, arpão elétrico); 12 só aparecem com arma branca (lâmina flamejante, gelo eterno, trovão, vampira, onda cortante, giro de aço, guarda espelhada...); 17 só com a arma certa e mudam o tiro dela; o resto geral, incluindo amaldiçoadas (muito boas com preço)
- [x] Escolha de relíquia com 3 opções e fala própria do Tião
- [x] Armas brancas: Espada do Afogado, Sabre de abordagem e Machado de âncora (golpe em arco que quebra tiros comuns)
- [x] Mais 12 equipamentos e 6 comidas (armas 37, equipamentos 67, comidas 21)
- [x] Decoração no meio da água: ficaram só as águas-vivas; saíram cardumes, tartarugas, raias, krill, algas soltas, bolhas, lanternas, baleia, neve, tábuas, sargaço, caixas e bola de isca
- [x] Mais 25 mensagens nas garrafas (outros pescadores)

## Tartarugas refeitas (feedback novo)
- [x] Visual novo: tartaruga-mordedora (casco escuro com espinhos, cabeça grande de bico curvo, cauda espinhosa) e tartaruga-verde (casco com escudos, nadadeiras longas)
- [x] Sem tanque: tiradas a armadura, a característica "casca" (85% menos dano) e o "escondida até morrer"; vida menor
- [x] Golpe: recolhe a cabeça (brilho amarelo) e dá o bote com o pescoço esticando; se errar, fica presa e leva mais dano
- [x] Com pouca vida: gira no casco (aviso), quica nas paredes mirando em você e derruba outros bichos ("STRIKE!"); depois de 3 quiques fica TONTA de barriga pra cima (dano em dobro) e volta a lutar

## Parry e faca (feedback novo)
- [x] Parry estilo Cuphead: AA instantâneo = só parry (quase sem dash, devolve a carga); A...A no meio do dash = parry que cancela o dash na hora
- [x] Faca de mergulho sempre na mão: tecla E alterna entre suas armas e a faca (corpo a corpo, mais arriscado)
- [x] Dificuldade afeta raridade: fácil = mais coisas boas, difícil/insano = menos
- [ ] Sereia — ver SEREIA_PROMPT.md
