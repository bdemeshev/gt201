import unicode;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));



/* Small Gadiukino */
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
