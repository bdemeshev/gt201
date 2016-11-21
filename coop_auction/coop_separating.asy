import unicode;
import graph;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Eju poniatno */
unitsize(1cm);

picture two_set;

draw(two_set,(0,0)--(1,0),Arrow);
draw(two_set,(0,0)--(0,1),Arrow);
fill(two_set,Circle((0.25,0.5),0.1),gray);

path second=(0.5,0.5)--(1,0.2)--(1,0.8)--cycle;
fill(two_set,second,gray);

real shift=9;

add(scale(5cm)*two_set,(0,0));
add(scale(5cm)*two_set,(shift,0));

label("\begin{scriptsize}
Два непересекающихся выпуклых множества...
\end{scriptsize}",(0.1,5),E);
label("\begin{scriptsize}
можно разделить гиперплоскостью.
\end{scriptsize}",(shift+0.1,5),E);

draw((shift+2.4,4.5)--(shift+2,0.1),red);




