import unicode;
import graph;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Nash Eq, simple game with linear border */

unitsize(1cm);

picture simple_ne;

draw(simple_ne,(0,0)--(1.2,0),Arrow);
draw(simple_ne,(0,0)--(0,1.2),Arrow);

path simple_trade_set=(1,0)--(0,1);
draw(simple_ne,simple_trade_set);

pair d=(0,0);
dot(simple_ne,d,red);
label(simple_ne,"$d$",d,E);

label(simple_ne,"$Y$",(0.01,0.8),E);


pair NE=(0.5,0.5);
dot(simple_ne,NE,red);
label(simple_ne,"\begin{scriptsize}Решение Нэша\end{scriptsize}",NE,E);


add(scale(4cm)*simple_ne,(0,0));
