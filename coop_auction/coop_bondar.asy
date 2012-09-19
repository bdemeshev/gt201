import unicode;
import three;
import graph3;

import settings;
outformat="pdf";
prc=false; /* no 3d models - just 2d projection */



texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

/* For Bondareva theorem */





size(0,200);
size3(200,IgnoreAspect);

currentprojection=perspective(5,2,2);

scale(Linear,Linear,Linear);

xaxis3("$x$",0,2,Arrow3);
yaxis3("$y$",0,2,Arrow3);
zaxis3("$z$",0,2,Arrow3);

triple a=(1,0,0.2);
triple b=(0,1,0.5);
triple c=(1,1,1.5);


draw((0,0,0)--2*a,green);
draw((0,0,0)--2*b,green);
draw((0,0,0)--1.5*c,green);


draw((0,0,0)--a,green,Arrow3);
draw((0,0,0)--b,Arrow3);
draw((0,0,0)--c,Arrow3);




draw(c--(1,1,2),red);


label("$(1,0,v_{1})$",a);
label("$(0,1,v_{2})$",b);
label("$(1,1,v_{12})$",c);





