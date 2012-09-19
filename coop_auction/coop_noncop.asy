import unicode;
import math;
import graph;

texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Nash solution as SPNE */

size(7cm);

draw((0,0)--(1.35,0),Arrow);
draw((0,0)--(0,1.35),Arrow);

path trade_set=(0.9,0)..(0.62,0.62)..(0,0.9);

path curve1=(0.1,1)..(0.4,0.4)..(1,0.1);
path curve2=shift((0.1,0.1))*curve1;
path curve3=shift((0.22,0.22))*curve1;

draw(curve1,red);
draw(curve2,red);
draw(curve3,red);

pair d=(0,0);

dot(d);
label("$d$",d,NE);

draw(trade_set);


pair[] a1=intersectionpoints(trade_set,curve1);
pair[] a2=intersectionpoints(trade_set,curve2);
pair[] a3=intersectionpoints(trade_set,curve3);


dot(a1[0],red);
dot(a1[1],red);

label("$x^{*}(p_{1})$",a1[0],S);
label("$y^{*}(p_{1})$",a1[1],S);

label("$x^{*}(p_{2})$",a2[0],S);
label("$y^{*}(p_{2})$",a2[1],S);


dot(a2[0],red);
dot(a2[1],red);

dot(a3[0],red);
label("\begin{scriptsize}
Решение Нэша
\end{scriptsize}",a3[0],E);