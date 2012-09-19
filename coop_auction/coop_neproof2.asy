import unicode;
import graph;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Nash Eq */

picture left_part;

unitsize(1cm);
draw(left_part,(0,0)--(1.2,0),Arrow);
draw(left_part,(0,0)--(0,1.2),Arrow);

path trade_set=(0.9,0)..(0.62,0.62)..(0,0.9);
draw(left_part,trade_set);

pair d=(0.5,0.1);
dot(left_part,d,red);
label(left_part,"$d$",d,E);

label(left_part,"$X$",(0.2,0.2),E);

pair NE=(0.7333,0.4733);
dot(left_part,NE,red);
label(left_part,"\begin{scriptsize}Решение Нэша\end{scriptsize}",NE,E);

label(left_part,"\begin{scriptsize}Исходная задача...\end{scriptsize}",(0.1,1),E);


add(scale(4cm)*left_part,(0,0));


picture simple_ne;

draw(simple_ne,(0,0)--(1.2,0),Arrow);
draw(simple_ne,(0,0)--(0,1.2),Arrow);
draw(simple_ne,scale(0.8)*trade_set);

path simple_trade_set=(1,0)--(0,1);
draw(simple_ne,simple_trade_set);

pair d=(0,0);
dot(simple_ne,d,red);
label(simple_ne,"$d$",d,E);

label(simple_ne,"$Y$",(0.01,0.8),E);
label(simple_ne,"$X'$",(0.2,0.2),E);


pair NE=(0.5,0.5);
dot(simple_ne,NE,red);
label(simple_ne,"\begin{scriptsize}Решение Нэша\end{scriptsize}",NE,E);

label(simple_ne,"\begin{scriptsize}После смены масштаба...\end{scriptsize}",(0.1,1),E);

add(scale(4cm)*simple_ne,(6,0));
