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

draw(curve1,red);

pair d=(0,0);

dot(d);
label("$d$",d,NE);

draw(trade_set);


pair[] a1=intersectionpoints(trade_set,curve1);


dot(a1[0],red);
dot(a1[1],red);

label("$x^{*}$",a1[0],S);
label("$y^{*}$",a1[1],S);



