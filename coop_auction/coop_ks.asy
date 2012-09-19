import unicode;
import math;
import graph;

texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Nash Eq */

size(10cm);

draw((0,0)--(1.5,0),Arrow);
draw((0,0)--(0,1.5),Arrow);

path trade_set=(0.9,0)..(0.62,0.62)..(0,0.9);

pair d=(0.5,0.1);

dot(d);
label("$d$",d,E);
label("X",(0.2,0.5));

draw(trade_set);

path new_x_axis=d--d+(1,0);
path new_y_axis=d--d+(0,1);

draw(new_x_axis,red,Arrow);
draw(new_y_axis,red,Arrow);

pair[] m1=intersectionpoints(trade_set,new_x_axis);
pair[] m2=intersectionpoints(trade_set,new_y_axis);

dot(m1[0],red);
dot(m2[0],red);

pair mm=m1[0]+m2[0]-d;

dot(mm,red);

path proport=d--mm;

draw(m1[0]--mm,red);
draw(m2[0]--mm,red);
draw(d--mm,red);

pair[] KS=intersectionpoints(trade_set,proport); 

dot(KS[0],red);
label("\begin{scriptsize}
Решение Калаи-Смородинского
\end{scriptsize}",KS[0],E);
