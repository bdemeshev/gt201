import unicode;
import graph;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Feasible set and disagreement point */

size(5cm);

draw((0,0)--(1,0),Arrow);
draw((0,0)--(0,1),Arrow);

path trade_set=(0.9,0)..(0.62,0.62)..(0,0.9);

pair d=(0.5,0.1);

dot(d);
label("$d$",d,E);
label("X",(0.2,0.5));

draw(trade_set);