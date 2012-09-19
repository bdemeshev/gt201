import unicode;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));


/* Nefteprovod */

unitsize (1cm);

draw("\begin{small}4\end{small}",(0,0)--(1,-1),Arrow);
draw("\begin{small}1\end{small}",(0,0)--(1,1),S,Arrow);
draw("\begin{small}3\end{small}",(1,1)--(1,-1),Arrow);
draw("\begin{small}2\end{small}",(1,1)--(2,0),S,Arrow);
draw("\begin{small}5\end{small}",(1,-1)--(2,0),Arrow);

dot((0,0));
label("A",(0,0),W);

dot((2,0));
label("B",(2,0),E);

