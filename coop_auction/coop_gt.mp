beginfig(1); % картинка по теории игр. Малое Гадюкино
u:=4; % курс уе 
z1=(0u,0u); % начало графа (точка 1-го уровня)
z2=(10u,0u); % точки второго уровня
z3=(15u,0u); 
z4=(35u,0u); 
z5=(40u,0u); 

draw z1--z2--z3--z4--z5;

dotlabel.bot("x1",z2);
dotlabel.bot("x2",z3);
dotlabel.bot("...",z4);
dotlabel.bot("xn",z5);

endfig;

beginfig(2); % картинка по теории игр. нефтепровод
u:=4; % курс уе 
z1=(0u,0u); % начало графа (точка 1-го уровня)
z2=(10u,10u); % точки второго уровня
z3=(10u,-10u); 
z4=(20u,0u); 

ahangle:=20;
ahlength:=2u;
drawarrow z1..z2;
drawarrow z1..z3;
drawarrow z2..z3;
drawarrow z2..z4;
drawarrow z3..z4;

dotlabel.lft("A",z1);
dotlabel.rt("B",z4);

dotlabel.urt("2",0.5[z2,z4]);
dotlabel.ulft("1",0.5[z1,z2]);
dotlabel.rt("3",0.5[z2,z3]);
dotlabel.bot("4",0.5[z1,z3]);
dotlabel.bot("5",0.5[z3,z4]);
endfig;


beginfig(3);
u:=4; % курс уе 
z00=(0u,0u);
z10=(33u,0u);
z01=(0u,33u);

ahangle:=20;
ahlength:=2u;
drawarrow z00..z10;
drawarrow z00..z01;

z2=(20u,20u);
z3=(30u,10u);

drawarrow z00..z2;
drawarrow z00..z3;


dotlabel.bot("x1",z10);
dotlabel.rt("x2",z01);


draw z2--z3;
dotlabel.urt("Shapley value",0.5[z2,z3]);
dotlabel.urt("(60;180)=Add-vector for Andrei-Boris",z3);
dotlabel.urt("(120;120)=Add-vector for Boris-Andrei",z2);
endfig;

end;
