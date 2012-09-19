import unicode;
import three;

texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));



/* pict 1, Small Gadiukino */
picture gadukino;
unitsize (1cm);

/* Рисуем Шоссе */
draw ((0,-1)--(0,1),linewidth(4)); 

draw ((0,0)--(9,0)); 

dot ((4,0)); 
label("$x_{1}$",(4,0),S); 
dot ((5,0)); 
label("$x_{2}$",(5,0),S); 
dot ((7,0));  
label("...",(7,0),S); 
dot ((9,0));  
label("$x_{n}$",(9,0),S); 

draw((2,-1.5)--(0.2,-1.2),Arrow); 
label("\begin{small}Шоссе\end{small}",(2,-1.5),E); 

draw((3,0.7)--(2,0.2),Arrow); 
label("\begin{small}Грунтовая дорога\end{small}",(3,0.7),E); 

/* pict 2, Nefteprovod */
newpage();
picture nefteprovod;
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



newpage();
unitsize (1cm);

draw ((0,0)--(1.1,0),Arrow);
draw ((0,0)--(0,1.1),Arrow);

draw ((1,0){up}..{left}(0,1));

dot ((0.2,0.3));
label("\begin{small}
Точка разногласия, $d$
\end{small}",(0.2,0.3),SE);

newpage();
real a=0.7;

draw((0,0,0)--(1,0,0));
draw((0,0,0)--(0,1,0));
draw((0,0,0)--(0,0,1));


draw((0,a,1-a)--(0,1-a,a)--(1-a,0,a)--(a,0,1-a)--(a,1-a,0)--(1-a,a,0)--cycle);


