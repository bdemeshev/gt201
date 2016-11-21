import unicode;
import graph;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Nash Eq */

size(5cm);

draw((0,0)--(1.5,0),Arrow);
draw((0,0)--(0,1.5),Arrow);

path trade_set=(0.9,0)..(0.62,0.62)..(0,0.9);

pair d=(0.5,0.1);

dot(d);
label("$d$",d,E);
label("X",(0.2,0.5));

draw(trade_set);

draw(d--d+(1,0),red,Arrow);
draw(d--d+(0,1),red,Arrow);

path level_curve=(2.5,0.9)..(2,1)..(1.333,1.333)..(1,2)..(0.9,2.5);
path level_curve_sh=shift((-0.5,-0.5))*shift(d)*scale(0.6)*level_curve;

draw(level_curve_sh,red);

pair NE=(0.7333,0.4733);
dot(NE,red);
label("\begin{scriptsize}
Решение Нэша
\end{scriptsize}",NE,E);
