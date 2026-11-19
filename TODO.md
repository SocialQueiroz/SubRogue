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
- [ ] Mais inimigos, mais variedade
- [x] Ninhos de peixes no fim das correntezas (soltam peixes, destruíveis, dão moedas e às vezes baú)
- [x] Paredes explodíveis: toda explosão agora abre um buraco na rocha
- [ ] Mais blocos interagíveis com explosão (rocha rachada, barris, cristais, etc.)
- [ ] Mais coisas interagíveis no cenário
- [x] Redemoinho de pressão negativa: refeito como espiral vermelha girando

## Música
- [x] Trilha muda em degradê gradual conforme a profundidade (não ficar na mesmice)

## Banco de dados / nuvem
- [ ] Escolher serviço (ver opções na conversa) e ligar contas, saves e ranking online

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
- [ ] Usar PocketBase (PocketHost): criar instância, coleções users/saves/scores e ligar no jogo
- [x] Tubarões-baleia soltam coraçõezinhos e regeneram toda a vida
- [x] Luta secreta da Orca feita
