---
title: "retake 22.09.2015"
output: pdf_document
lang: russian
---


1.1. rationalizable = те стратегии, которые невозможно удалить при исключении доминируемых стратегий

Обнаруживаем, что $(c_1, c_2)$ --- всегда NE в базовой игре.

Заметим, что матрица симметрична. Поэтому пробуем исключать стратегеи только за первого игрока. Стратегию $b_1$ удалить невозможно (там 4 против 3 или 1). Стратегию $c_1$ удалить невозможно (там 1 против 0 или 0). Значит если что-то можно удалить, то только стратегию $a_1$.

Допустим $pb+(1-p)c > a$. Получаем три неравенства $p>2/3$, $p(1-x)<1$ и $p<1$.

Замечаем, что при неотрицательных $x$ проблем с вычеркиванием $a_1$ нет, достаточно взять стратегию $b$ с вероятностью $p>2/3$ и стратегию $c$ с вероятностью $1-p$.

При отрицательных $x$ второе неравенство превращается в $p<1/(1-x)$. Второе неравенство начнет противоречить первому $p>2/3$, если $1/(1-x)=2/3$, то есть $x=-0.5$.

Следовательно, если $x \leq -0.5$, то ничего не вычеркивается. Если $x>-0.5$, то сначала вычеркивается $a_1$ (и $a_2$).

Если $x \geq 1$, то после $a_1$ уже ничего не вычеркивается, так как будет два равновесия Нэша в базовой игре.

Если $x \in (-0.5;1)$, то после вычеркивания $a_1$ и $a_2$ можно также вычеркнуть $b_1$ и $b_2$.

Итого:

Если $x \leq -0.5$, то ничего не вычеркнулось, rationalizable =  $(a_1, b_1, c_1 ; a_2, b_2, c_2)$

Если $x \in (-0.5;1)$, то  вычеркнулось $a$ и $b$, rationalizable =  $(c_1 ; c_2)$

Если $x \geq 1$, то  вычеркнулось только $a$, rationalizable =  $(b_1, c_1 ; b_2, c_2)$

1.2. При $x<1$ единственное NE в базовой игре --- это $(c_1 ; c_2)$. Если игра повторяется конечное число раз, то единственным  SPE будет ситуация в которой игроки в каждой базовой игре будут играть NE. То есть SPE будет:

Стратегия 1-го: В каждой партии играть $c_1$. Стратегия 2-го: В каждой партии играть $c_2$.

1.3. Если $(x-1)T>1$, то есть $x>1+1/T$, то равновесий Нэша в базовой игре два. Следовательно возможны угрозы типа «Если ты не сходишь как я схожу в первой партии, то я буду тебе подсовывать плохое равновесие Нэша в остальных партиях; а если сходишь --- то хорошее».

Если во всех партиях кроме первой игроки играют плохое равновесие Нэша $(c_1, c_2)$, то они получают $T\cdot 1=T$ рублей. Если во всех партиях кроме первой игроки играют хорошее равновесие Нэша $(b_1, b_2)$, то они получают $T\cdot x=Tx$ рублей. Значит преимущество от всех хороших равновесий равно $Tx-T=T(x-1)$ рубль.

Таким образом SPE выглядит так:

Стратегия 1-го:

В первой партии сходи $a_1$. Далее играй $b_1$, если в первой партии вышло $(a_1,a_2)$; играй $c_1$, если в первой не вышло $(a_1,a_2)$.

Стратегия 2-го аналогична.

В партиях начиная со второй игроки играют NE в каждой базовой игре, поэтому это оптимально. Проверяем оптимальность поведения в первой партии. Если зафиксировать стратегию 1-го игрока, то второй может вместо 3 рублей получить 4 (то есть увеличить выигрыш на 1 рубль), выбирая ход $b_2$ в первой партии. Но при этом в остальных партиях игра скатиться в плохое NE и второй игрок потеряет от этого $T(x-1)$ рублей. Следовательно, указанная пара стратегий будет $SPE$ при $T(x-1)>1$.

2. Исходные обозначения ходов первого дурацкие. Обозначим их l и r сверху  и L и R снизу.

Начинаем перебор за второго игрока и ищем наилучший ответ первого.

u -> rL

d -> lL


Применяем формулу условной вероятности:

rL -> вера (сверху) $\mu=1$

lL -> нет ограничений на $\mu$

Проверяем оптимальность действий второго:

rL и $\mu=1$ -> u оптимально. Ура, $(u, rL, \mu=1 )$ --- PBE

lL без ограничений на $\mu$ -> чтобы $d$ было оптимально $\mu \leq 0.5$. Ура, $(d, lL, \mu \leq 0.5)$ --- PBE



Более правдоподобно из этих двух равновесие равновесие $(u, rL)$, так первый игрок своим выбором на первом шаге может выбрать более приятное для себя равновесие.

3. First price auction for a painting whose authentity is uncertain.
A priori it is authentic with probability 50%. You and your competitor receive a private signal which is positive if the painting is authentic and negative if not with probability 0.99. If the painting is authentic its value is 100 and 0 otherwise.
You can bid any non-negative integer. In case of a tie, the object is assigned to either you with probability 50%. Only the winner pays. Find two symmetric pure BNE.



