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
- [x] Sereia (a partir de 400 m): pixel art própria com 7 cabelos, 7 tons de pele, 6 caudas (abissal com pintinhas que brilham, mais comum no fundo) e 5 enfeites; canta anéis com notinhas, cada onda tira 1 coração, trecho ROXO atravessa aparando ("ATRAVESSOU!"), grito todo roxo de vez em quando, tiro de longe desvia ("A CANÇÃO DESVIA!"), só leva dano de perto, rabada que empurra, Tião avisa no primeiro encontro, solta pérolas, conquista "Canto Silenciado"

## Dificuldade nos chefes (feedback novo)
- [x] Fácil: chefes mais lentos (IA a 78% do tempo e 80% da velocidade), golpes, tiros e raios dão menos dano (cerca de metade), uns 30% menos tiros, tiros mais lentos e avisos que duram mais
- [x] Difícil/Insano: chefes mais rápidos, tiros mais rápidos e avisos mais curtos (o dano extra já vem da dificuldade)
- [x] Vale pros chefes míticos, pros pedaços deles (cabeças, tentáculos) e pra Orca

## Bugs vistos (novos)
- [x] Fechar a fala do Tião com A (controle), Enter ou 1/2/3 comprava item na loja ou escolhia carta/relíquia por trás. Agora o controle não manda "confirmar" pra tela de trás enquanto a fala está aberta nem logo depois de fechar (0,35 s); e cada A faz só uma coisa (antes um A pulava duas falas)

## Mais variedade (feedback novo) — sem mudar quantas coisas aparecem
- [x] Equipamentos 67→100: 18 comuns fraquinhos (meia de lã, chiclete de alga, tampinha da sorte...), 11 raros médios e 4 épicos fortes; a chance de cada raridade na loja continua a mesma
- [x] Comidas 21→30 (pão dormido, bala de goma, tapioca, água de coco, caldo de piranha, acarajé, boia de braço...)
- [x] Relíquias 119→138: 6 fraquinhas, 7 médias, 3 fortes e 3 amaldiçoadas
- [x] Cartas 217→250: 22 comuns fraquinhas, 7 raras, 3 épicas, 2 lendárias (a chance de cada raridade continua a mesma)
- [x] Artefatos 607→899 com 11 efeitos novos (crítico, cadência, experiência, vida cheia, furtividade, crítico mais forte, empurrão, tiro de perto, tiro de longe, moeda por acerto, cura por abate); os comuns novos são bem fraquinhos
- [x] Bug: o aviso "★ Combina com..." era grudado no item original e repetia a cada loja

## Sortear de novo mais caro (feedback novo)
- [x] "Trocar estoque" (loja) e "Sortear de novo" (artefatos) começam em 70 de ouro, sobem 5 a cada descida (100 m) e ficam 50% mais caros a cada vez na mesma tela; numa tela nova volta pro preço base da profundidade

## Debug (feedback novo: pressão negativa, fendas, baús atrás das paredes)
- [x] Cavernas escondidas: o túnel de rocha rachada saía em diagonal e só encostava pela quina, aí não dava pra entrar (46% das cavernas). Agora o túnel anda um eixo por vez e todas abrem
- [x] Cavernas escondidas: metade das fendas não tinha nenhuma (regra de lugar muito exigente); agora 84% das fendas têm
- [x] O baú da caverna escondida virava peixe-baú (16%): agora o prêmio da caverna é sempre um baú de verdade
- [x] Fossa de pressão negativa na fenda logo abaixo de um covil jogava você de volta no chefe já derrotado
- [x] Fossa nascia colada no começo da fenda (às vezes a 100 px) ou perto da saída: agora fica longe dos dois
- [x] Bichos nascendo dentro da rocha ficavam presos pra sempre (1 a cada 8 fendas): agora são empurrados pro espaço livre
- [x] Santuário ("nenhum bicho") ainda podia ter sereia e ninho de peixes
- [x] Cada explosão redesenhava o mapa inteiro e sorteava de novo todas as plantas e corais (o cenário "pulava"); agora só os blocos quebrados
- [x] Testado: 300 fendas geradas (todos os tipos), descida/loja/fendas 25 vezes seguidas, morte, chefes e todas as profundidades no insano sem erro
