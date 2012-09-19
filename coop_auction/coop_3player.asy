import unicode;
import three;
import graph3;


import settings;
outformat="pdf";
prc=false; /* no 3d models - just 2d projection */



texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* Core of 3 player unanimity game */





real a=0.7;



size(0,200);
size3(200,IgnoreAspect);

currentprojection=perspective(5,2,2);

scale(Linear,Linear,Linear);

xaxis3("$x$",0,1,Arrow3);
yaxis3("$y$",0,1,Arrow3);
zaxis3("$z$",0,1,Arrow3);


draw((0,a,1-a)--(0,1-a,a)--(1-a,0,a)--(a,0,1-a)--(a,1-a,0)--(1-a,a,0)--cycle);

draw((a,0,0)--(a,1-a,0),red);
draw((0,1-a,0)--(a,1-a,0),red);

draw((1-a,0,0)--(1-a,a,0),red);
draw((0,a,0)--(1-a,a,0),red);



dot((a,1-a,0));
dot((1-a,a,0));
dot((0,a,1-a));
dot((0,1-a,a));
dot((a,0,1-a));
dot((1-a,0,a));


label("$\alpha$",(a,0,0));
label("$\alpha$",(0,a,0));
label("$\alpha$",(0,0,a));

label("$1-\alpha$",(0,0,1-a));
label("$1-\alpha$",(0,1-a,0));
label("$1-\alpha$",(1-a,0,0));




