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
- [ ] Variedade vem de um catálogo interno MUITO maior (dobrar itens e interações) — artefatos feitos (300 comuns, 200 raros, 70 épicos, ~23 lendários); falta dobrar equipamentos/comidas/armas
- [ ] O Tião tem uma fala própria para cada item — hoje fala por categoria com o nome do item; falta fala única por item
- [x] Rebalancear raridade dos artefatos: "Rastro de espinhos" e "Drone-baiacu" fortes demais pra comum/rara
- [ ] Itens com interações legais que mudem o jeito de jogar (sinergias, efeitos que combinam)

## Conteúdo
- [ ] Mais inimigos, mais variedade — feito em parte: tartaruga-mordedora, tartaruga-verde, caravela, juba-de-leão, ctenóforo, polvo-gigante, peixe-baú
- [x] Ninhos de peixes no fim das correntezas (soltam peixes, destruíveis, dão moedas e às vezes baú)
- [x] Paredes explodíveis: bomba e minas agora abrem buraco na rocha de verdade (antes a bomba não quebrava nada)
- [ ] Mais blocos interagíveis com explosão (rocha rachada, barris, cristais, etc.)
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
- [ ] Refazer a luta da Orca como chefe de verdade com VÁRIAS FASES (como os chefes mitológicos: 4 fases, rugido, golpes novos por fase)
- [ ] Animação da orca melhor (nado, mordida, giro, salto, cauda)
- [ ] IA inteligente: orcas são caçadoras espertas — cercar, fingir recuar, emboscar, usar ondas/bolhas pra encurralar, prever a posição do jogador, chamar o "grupo" (filhotes) numa fase

## Pedidos novos (feitos)
- [x] Caranguejo-chefe extra no fim dos 300 m no Difícil/Insano
- [x] Tartarugas: mordida esticando o pescoço; com pouca vida entram no casco, giram quicando 3 vezes e ficam escondidas até morrer
- [x] Águas-vivas com tentáculos longos que fluem e queimam
- [x] Polvo-gigante que agarra (impulso solta)
- [x] Peixe-baú disfarçado de baú
- [x] Menu enxuto: Novo jogo, Como jogar, Tutorial, Conquistas (com Ranking e Álbum), Configurações (com Vestiário); estaleiro fora do menu
- [x] Tutorial obrigatório antes da primeira partida da conta
- [x] Tião no barco do menu
