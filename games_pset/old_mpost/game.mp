
%(in use)
beginfig(1); % картинка по теории игр несовершенная - неполная
u:=4; % курс уе 
z[1][1]=(10u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z[3][5]=(25u,-20u);
z[3][6]=(35u,-20u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;
draw z[3][6]--z[2][3]--z[3][5];
draw z[1][1]--z[2][3];

dotlabel.bot("(0;3)",z[3][1]);
dotlabel.bot("(0;0)",z[3][2]);
dotlabel.bot("(0;4)",z[3][3]);
dotlabel.bot("(3;1)",z[3][4]);
dotlabel.bot("(0;1)",z[3][5]);
dotlabel.bot("(1;0)",z[3][6]);


dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt(btex \bf{II} etex,z[2][3]);

dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.rt("M",0.5[z[1][1],z[2][2]]);
label.urt("R",0.5[z[1][1],z[2][3]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);
label.lft("l",0.5[z[2][3],z[3][5]]);
label.rt("r",0.5[z[2][3],z[3][6]]);



endfig;

%(in use)
beginfig(2); % картинка по теории игр "SPNE<>WPBE" c тремя игроками
u:=4; % курс уе
z[1][1]=(0u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z[-1][1]=(0u,10u); % точки минус первого уровня
z[-1][2]=(10u,10u);

draw z[1][1]--z[-1][1]--z[-1][2];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.bot("(0;3;3)",z[3][1]);
dotlabel.bot("(0;0;2)",z[3][2]);
dotlabel.bot("(0;4;0)",z[3][3]);
dotlabel.bot("(3;1;1)",z[3][4]);
dotlabel.rt("(2;2;2)",z[-1][2]);
dotlabel.lft(btex \bf{I} etex,z[-1][1]);
dotlabel.lft(btex \bf{II} etex,z[1][1]);
dotlabel.lft(btex \bf{III} etex,z[2][1]);
dotlabel.rt("",z[2][2]);
label.top("Out",0.5[z[-1][1],z[-1][2]]);
label.lft("In",0.5[z[-1][1],z[1][1]]);
label.lft("L",0.5[z[1][1],z[2][1]]);
label.rt("R",0.5[z[1][1],z[2][2]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);

label.top(btex $[\mu]$ etex,z[2][1]);
label.urt(btex $[1-\mu]$ etex,z[2][2]);

endfig;

%(in use)
beginfig(3); % картинка по теории игр "WPBE<>NE" c двумя игроками 
% Ослик Зелтена
u:=4; % курс уе
z[1][1]=(0u,0u); % начало графа (точка 1-го уровня)
z[1][2]=(-10u,0u);
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);

draw z[1][1]--z[1][2];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.lft("(1;1)",z[1][2]);
dotlabel.bot("(2;3)",z[3][1]);
dotlabel.bot("(0;0)",z[3][2]);
dotlabel.bot("(2;3)",z[3][3]);
dotlabel.bot("(0;0)",z[3][4]);
dotlabel.rt(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt("",z[2][2]);
label.lft("L",0.5[z[1][1],z[2][1]]);
label.rt("R",0.5[z[1][1],z[2][2]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);
label.top("Out",0.5[z[1][1],z[1][2]]);

label.top(btex $[\mu]$ etex,z[2][1]);
label.urt(btex $[1-\mu]$ etex,z[2][2]);

endfig;

%(in use)
beginfig(4); % картинка по теории игр. Одновременная игра 2-х игроков.
u:=4; % курс уе
z[1][1]=(0u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.bot("(0;3)",z[3][1]);
dotlabel.bot("(0;0)",z[3][2]);
dotlabel.bot("(0;4)",z[3][3]);
dotlabel.bot("(3;1)",z[3][4]);
dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.urt("R",0.5[z[1][1],z[2][2]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);


endfig;

%(in use)
beginfig(5); % картинка по теории игр. Мост через реку Кваи.
u:=4; % курс уе
z1=(0u,0u); % левый верхний город
z2=(10u,0u); z3=(20u,0u); z4=(0u,-10u); z5=(10u,-10u);
z6=(20u,-10u);

z7=(-5u,-2u); % для реки
z8=(25u,-2u); z9=(-5u,-8u); z10=(25u,-8u);

draw z1--z2--z3--z6--z5--z4--z1;

draw z7--z8 dashed evenly; draw z9--z10 dashed evenly;

dotlabel.bot("A",z4); dotlabel.top("D",z3); dotlabel.top("B",z2);
dotlabel.bot("C",z5);

endfig;



beginfig(6); % картинка к задаче в игру Rayles - недоделка
u:=4; % курс уе


z1=(7u,10u);
z2=(10u,11u);
z3=(12u,8u);
z4=(15u,11u);
z5=(17u,10u);
z6=(18u,5u);
z7=(18u,14u);
z8=(19u,10u);
z9=(20u,7u);
z10=(22u,17u);
z11=(22u,11u);
z12=(24u,10u);
z13=(27u,10u);
z14=(30u,19u);
z15=(30u,17u);
z16=(30u,15u);
z17=(32u,11u);
z18=(32u,17u);
z19=(18u,15u);

draw z1..z6..z13..z19..cycle;
draw z5..z9..z12..cycle;
draw z16..z18..z14..cycle;



dotlabel.bot("",z1);
dotlabel.bot("",z2);
dotlabel.bot("",z3);
dotlabel.bot("",z4);
%dotlabel.bot("",z5);
%dotlabel.bot("",z6);
dotlabel.bot("",z7);
dotlabel.bot("",z8);
dotlabel.bot("",z9);
dotlabel.bot("",z10);
dotlabel.bot("",z11);
%dotlabel.bot("",z12);
dotlabel.bot("",z13);
dotlabel.bot("",z14);
dotlabel.bot("",z15);
%dotlabel.bot("",z16);
dotlabel.bot("",z17);
dotlabel.bot("",z18);
%dotlabel.bot("",z19);


endfig; % 6, Rayles


beginfig(7); % большое дерево (несовершенная память)

z0=(20u,10u);
z11[3]=(20u,0u);

dotlabel.bot("",z0);
dotlabel.bot("",z11[3]);

for i=1 step 1 until 2:

u:=4; % курс уе

z11[i]=(0u+(i-1)*40u,0u); % начало графа (точка 1-го уровня)
z22[i]=(10u+(i-1)*40u,-10u); % точки второго уровня
z21[i]=(-10u+(i-1)*40u,-10u); 
z34[i]=(15u+(i-1)*40u,-20u); % точки третьего уровня
z33[i]=(5u+(i-1)*40u,-20u);
z32[i]=(-5u+(i-1)*40u,-20u);
z31[i]=(-15u+(i-1)*40u,-20u);

draw z31[i]--z21[i]--z32[i];
draw z33[i]--z22[i]--z34[i];
draw z21[i]--z11[i]--z22[i];


dotlabel.bot("",z31[i]);
dotlabel.bot("",z32[i]);
dotlabel.bot("",z33[i]);
dotlabel.bot("",z34[i]);
dotlabel.bot("",z11[i]);
dotlabel.rt("",z22[i]);
label.ulft("L",0.5[z11[i],z21[i]]);
label.urt("R",0.5[z11[i],z22[i]]);
label.lft("l",0.5[z21[i],z31[i]]);
label.rt("r",0.5[z21[i],z32[i]]);
label.lft("l",0.5[z22[i],z33[i]]);
label.rt("r",0.5[z22[i],z34[i]]);

endfor;

for i=1 step 1 until 3:
	draw z0--z11[i];
endfor;

draw z22[1]--z21[2] dashed evenly;
dotlabel.ulft(btex \bf{I} etex,z0);
%dotlabel.ulft(btex \bf{II} etex,z11[i]);
dotlabel.lft(btex \bf{I} etex,z22[1]);
dotlabel.ulft(btex \bf{I} etex,z21[1]);
dotlabel.urt(btex \bf{I} etex,z22[2]);
dotlabel.bot("",z21[2]);
dotlabel.ulft(btex \bf{II} etex,z11[1]);
dotlabel.urt(btex \bf{II} etex,z11[2]);


label.ulft("A",0.5[z0,z11[1]]);
label.urt("C",0.5[z0,z11[2]]);
label.lft("B",0.5[z0,z11[3]]);



endfig;


%in use
beginfig(8); % Вариация на тему игры с гранатой
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(3;2)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(1;5)",z41);
dotlabel.bot("(0;7)",z42);
dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{II} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("A",0.5[z22,z33]);
label.rt("B",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig; %8


beginfig(9); % В саду растет первое дерево
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z32=(-5u,-20u);% точки третьего уровня
z31=(-15u,-20u);

draw z31--z21--z32;
draw z21--z11--z22;

dotlabel.bot("(3;2)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.bot("(1;1)",z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);


endfig;

beginfig(10); % В саду растет второе дерево
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);
z43=(-10u,-30u); %точки четвертого уровня
z44=(0u,-30u);



draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;
draw z44--z32--z43;

dotlabel.bot("(3;1)",z31);
dotlabel.bot("(1;2)",z43);
dotlabel.bot("(0;7)",z44);
dotlabel.urt(btex \bf{I} etex,z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(2;5)",z41);
dotlabel.bot("(1;7)",z42);
dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{II} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("A",0.5[z22,z33]);
label.rt("B",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);
label.lft("X",0.5[z32,z43]);
label.rt("Y",0.5[z32,z44]);



endfig;

beginfig(11); % В саду растет третье дерево
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(2;3)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(5;1)",z41);
dotlabel.bot("(7;0)",z42);
dotlabel.urt(btex \bf{II} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{N} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("p=2/3",0.5[z22,z33]);
label.rt("p=1/3",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig;

beginfig(12); % В саду растет четвертоей дерево
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(4;2)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(1;4)",z41);
dotlabel.bot("(0;7)",z42);
dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{II} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("A",0.5[z22,z33]);
label.rt("B",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig;



%in use
beginfig(13); % картинка по теории игр несовершенная - неполная
u:=4; % курс уе
z[1][1]=(10u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z[3][5]=(25u,-20u);
z[3][6]=(35u,-20u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][3]--z[2][2] dashed evenly;
draw z[3][6]--z[2][3]--z[3][5];
draw z[1][1]--z[2][3];

dotlabel.bot("(0;3)",z[3][1]);
dotlabel.bot("(0;0)",z[3][2]);
dotlabel.bot("(0;4)",z[3][3]);
dotlabel.bot("(3;1)",z[3][4]);
dotlabel.bot("(0;1)",z[3][5]);
dotlabel.bot("(1;0)",z[3][6]);


dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt(btex \bf{II} etex,z[2][3]);

dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.rt("M",0.5[z[1][1],z[2][2]]);
label.urt("R",0.5[z[1][1],z[2][3]]);
label.lft("C",0.5[z[2][1],z[3][1]]);
label.rt("D",0.5[z[2][1],z[3][2]]);
label.lft("X",0.5[z[2][2],z[3][3]]);
label.rt("Y",0.5[z[2][2],z[3][4]]);
label.lft("X",0.5[z[2][3],z[3][5]]);
label.rt("Y",0.5[z[2][3],z[3][6]]);

endfig; %13 фигура



%in use
beginfig(14); % картинка по теории игр несовершенная - неполная
u:=4; % курс уе
z[1][1]=(10u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][5]=(25u,-20u);
z[3][6]=(35u,-20u);

draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][3]--z[2][2] dashed evenly;
draw z[3][6]--z[2][3]--z[3][5];
draw z[1][1]--z[2][3];

dotlabel.bot("(0;2)",z[2][1]);
dotlabel.bot("(-3;-1)",z[3][3]);
dotlabel.bot("(1;-2)",z[3][4]);
dotlabel.bot("(-2;-1)",z[3][5]);
dotlabel.bot("(3;1)",z[3][6]);


dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.rt(btex \bf{II} etex,z[2][3]);

dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.rt("M",0.5[z[1][1],z[2][2]]);
label.urt("R",0.5[z[1][1],z[2][3]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);
label.lft("l",0.5[z[2][3],z[3][5]]);
label.rt("r",0.5[z[2][3],z[3][6]]);



endfig; %14 фигура




beginfig(15); % Вариация на тему игры с гранатой
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(4;4)",z33);
dotlabel.bot("(1;5)",z41);
dotlabel.bot("(0;7)",z42);
dotlabel.bot("(0;1)",z21);


dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.urt(btex \bf{II} etex,z22);
%dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z22,z33]);
label.rt("B",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig; %15


beginfig(16); % Вариация на тему игры с гранатой
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;
draw z21--z22 dashed evenly;


dotlabel.bot("(3;2)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(1;5)",z41);
dotlabel.bot("(0;7)",z42);

dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{II} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("A",0.5[z22,z33]);
label.rt("B",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig; %16


%in use
beginfig(17); % картинка по теории игр. 
u:=4; % курс уе
z[1][1]=(0u,0u); % продолжение графа (точки 2-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z10=(-20u,0u); % досрочное окончание игры
z01=(-10u,10u); % настоящее начало

draw z10--z01--z[1][1];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.bot("(0;2)",z10);
dotlabel.bot("(-6;-6)",z[3][1]);
dotlabel.bot("(-1;1)",z[3][2]);
dotlabel.bot("(1;-1)",z[3][3]);
dotlabel.bot("(-3;-3)",z[3][4]);

dotlabel.urt(btex \bf{II} etex,z[1][1]);
dotlabel.lft(btex \bf{I} etex,z[2][1]);
dotlabel.ulft(btex \bf{I} etex,z01);
dotlabel.rt("",z[2][2]);
label.ulft("M",0.5[z[1][1],z[2][1]]);
label.urt("N",0.5[z[1][1],z[2][2]]);
label.lft("X",0.5[z[2][1],z[3][1]]);
label.rt("Y",0.5[z[2][1],z[3][2]]);
label.lft("X",0.5[z[2][2],z[3][3]]);
label.rt("Y",0.5[z[2][2],z[3][4]]);
label.ulft("L",0.5[z10,z01]);
label.urt("R",0.5[z[1][1],z01]);


endfig; %17



beginfig(18); % картинка по теории игр. Последовательная игра 2-х игроков.
u:=4; % курс уе
z[1][1]=(0u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];

dotlabel.bot("(0;3)",z[3][1]);
dotlabel.bot("(0;0)",z[3][2]);
dotlabel.bot("(0;4)",z[3][3]);
dotlabel.bot("(3;1)",z[3][4]);
dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt(btex \bf{II} etex,z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.urt("R",0.5[z[1][1],z[2][2]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);


endfig; %18



beginfig(19); % картинка по теории игр. 
u:=4; % курс уе
z[1][1]=(0u,0u); % продолжение графа (точки 2-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z10=(20u,0u); % досрочное окончание игры
z01=(10u,10u); % настоящее начало

draw z10--z01--z[2][1];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][2]--z10--z[2][3];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.bot("(1;1)",z[2][3]);
dotlabel.bot("(0;3)",z[3][1]);
dotlabel.bot("(0;0)",z[3][2]);
dotlabel.bot("(0;4)",z[3][3]);
dotlabel.bot("(3;1)",z[3][4]);
dotlabel.urt(btex \bf{I} etex,z10);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.ulft(btex \bf{I} etex,z01);
dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z01]);
label.urt("R",0.5[z10,z01]);
label.ulft("A",0.5[z[2][2],z10]);
label.urt("B",0.5[z[2][3],z10]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);


endfig; %19

beginfig(20);
u:=4; % курс уе
z11=(0u,10u);
z21=(-15u,0u);
z22=(15u,0u);
z31=(-20u,-10u);
z32=(-10u,-10u);
z33=(10u,-10u);
z34=(20u,-10u);
z41=(-15u,-20u);
z42=(-5u,-20u);
z43=(5u,-20u);
z44=(15u,-20u);


draw z21--z11--z22;
draw z31--z21--z32;
draw z33--z22--z34;
draw z41--z32--z42;
draw z43--z33--z44;
draw z32--z33 dashed evenly;

dotlabel.bot("(1;2)",z31);
dotlabel.bot("(2;2)",z41);
dotlabel.bot("(3;2)",z42);
dotlabel.bot("(4;2)",z43);
dotlabel.bot("(5;2)",z44);
dotlabel.bot("(6;2)",z34);


label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.ulft("A",0.5[z21,z31]);
label.urt("B",0.5[z21,z32]);
label.ulft("A",0.5[z22,z33]);
label.urt("B",0.5[z22,z34]);
label.ulft("C",0.5[z32,z41]);
label.urt("D",0.5[z32,z42]);
label.ulft("C",0.5[z33,z43]);
label.urt("D",0.5[z33,z44]);



endfig; %20


%(in use)
beginfig(21); % картинка по теории игр "SPNE<>WPBE" c тремя игроками без вер
u:=4; % курс уе
z[1][1]=(0u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z[-1][1]=(0u,10u); % точки минус первого уровня
z[-1][2]=(10u,10u);

draw z[1][1]--z[-1][1]--z[-1][2];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.bot("(0;3;3)",z[3][1]);
dotlabel.bot("(0;0;2)",z[3][2]);
dotlabel.bot("(0;4;0)",z[3][3]);
dotlabel.bot("(3;1;1)",z[3][4]);
dotlabel.rt("(2;2;2)",z[-1][2]);
dotlabel.lft(btex \bf{I} etex,z[-1][1]);
dotlabel.lft(btex \bf{II} etex,z[1][1]);
dotlabel.lft(btex \bf{III} etex,z[2][1]);
dotlabel.rt("",z[2][2]);
label.top("Out",0.5[z[-1][1],z[-1][2]]);
label.lft("In",0.5[z[-1][1],z[1][1]]);
label.lft("L",0.5[z[1][1],z[2][1]]);
label.rt("R",0.5[z[1][1],z[2][2]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);

endfig; %21



%in use
beginfig(22); % картинка по теории игр. 
u:=4; % курс уе
z[1][1]=(0u,0u); % продолжение графа (точки 2-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z10=(-20u,0u); % досрочное окончание игры
z01=(-10u,10u); % настоящее начало

draw z10--z01--z[1][1];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;

dotlabel.bot("(2;0)",z10);
dotlabel.bot("(5;1)",z[3][1]);
dotlabel.bot("(1;0)",z[3][2]);
dotlabel.bot("(4;0)",z[3][3]);
dotlabel.bot("(0;1)",z[3][4]);

dotlabel.urt(btex \bf{II} etex,z[1][1]);
dotlabel.lft(btex \bf{I} etex,z[2][1]);
dotlabel.ulft(btex \bf{I} etex,z01);
dotlabel.rt("",z[2][2]);
label.ulft("M",0.5[z[1][1],z[2][1]]);
label.urt("N",0.5[z[1][1],z[2][2]]);
label.lft("X",0.5[z[2][1],z[3][1]]);
label.rt("Y",0.5[z[2][1],z[3][2]]);
label.lft("X",0.5[z[2][2],z[3][3]]);
label.rt("Y",0.5[z[2][2],z[3][4]]);
label.ulft("L",0.5[z10,z01]);
label.urt("R",0.5[z[1][1],z01]);

endfig; %22



beginfig(23); % Вариация на тему игры с гранатой
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(-1;-1)",z21);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(1;5)",z41);
dotlabel.bot("(0;7)",z42);


dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.urt(btex \bf{II} etex,z22);
%dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("C",0.5[z22,z33]);
label.rt("D",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig; %23


beginfig(24); % В саду растет третье дерево
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(2;3)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(5;1)",z41);
dotlabel.bot("(7;0)",z42);
dotlabel.urt(btex \bf{II} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{N} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("p=2/3",0.5[z22,z33]);
label.rt("p=1/3",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig; %24



%in use
beginfig(25); % Вариация на тему игры с гранатой
u:=4; % курс уе
z11=(0u,0u); % начало графа (точка 1-го уровня)
z22=(10u,-10u); % точки второго уровня
z21=(-10u,-10u); 
z34=(15u,-20u); % точки третьего уровня
z33=(5u,-20u);
z32=(-5u,-20u);
z31=(-15u,-20u);
z41=(10u,-30u); %точки четвертого уровня
z42=(20u,-30u);

draw z31--z21--z32;
draw z33--z22--z34;
draw z21--z11--z22;
draw z41--z34--z42;

dotlabel.bot("(3;2)",z31);
dotlabel.bot("(-1;-1)",z32);
dotlabel.bot("(4;4)",z33);
dotlabel.bot("(1;5)",z41);
dotlabel.bot("(0;7)",z42);
dotlabel.urt(btex \bf{I} etex,z34);
dotlabel.ulft(btex \bf{I} etex,z11);
dotlabel.ulft(btex \bf{II} etex,z21);
dotlabel.urt(btex \bf{II} etex,z22);
dotlabel.rt("",z22);
label.ulft("L",0.5[z11,z21]);
label.urt("R",0.5[z11,z22]);
label.lft("A",0.5[z21,z31]);
label.rt("B",0.5[z21,z32]);
label.lft("C",0.5[z22,z33]);
label.rt("D",0.5[z22,z34]);
label.lft("X",0.5[z34,z41]);
label.rt("Y",0.5[z34,z42]);


endfig; %25


%in use
beginfig(26); % картинка по теории игр несовершенная - неполная
u:=4; % курс уе
z[1][1]=(10u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][5]=(25u,-20u);
z[3][6]=(35u,-20u);

draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][3]--z[2][2] dashed evenly;
draw z[3][6]--z[2][3]--z[3][5];
draw z[1][1]--z[2][3];

dotlabel.bot("(2;2)",z[2][1]);
dotlabel.bot("(0;0)",z[3][3]);
dotlabel.bot("(5;1)",z[3][4]);
dotlabel.bot("(0;0)",z[3][5]);
dotlabel.bot("(1;3)",z[3][6]);


dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.rt(btex \bf{II} etex,z[2][3]);

dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.rt("M",0.5[z[1][1],z[2][2]]);
label.urt("R",0.5[z[1][1],z[2][3]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);
label.lft("l",0.5[z[2][3],z[3][5]]);
label.rt("r",0.5[z[2][3],z[3][6]]);



endfig; %26 фигура

%in use
beginfig(27); % картинка по теории игр, двигаем фишку
u:=4; % курс уе
z11=(0u,20u);
z12=(10u,20u);
z13=(20u,20u);
z21=(5u,10u);
z22=(15u,10u);
z23=(25u,10u);
z31=(0u,0u);
z32=(10u,0u);
z33=(20u,0u);

ahangle:=20;
ahlength:=2u;
drawarrow z11..z12;
drawarrow z11..z21;
drawarrow z11..z31;
drawarrow z12..z22;
drawarrow z12..z13;
drawarrow z13..z33;
drawarrow z21..z12;
drawarrow z21..z33;
drawarrow z21..z13;
drawarrow z22..z23;
drawarrow z31..z21;
drawarrow z31..z32;
drawarrow z32..z22;
drawarrow z32..z33;
drawarrow z33..z22;
drawarrow z13..z22;
drawarrow z22..z11;

dotlabel.top("A",z11);
dotlabel.top("B",z12);
dotlabel.top("C",z13);
dotlabel.lft("D",z21);
dotlabel.lft("E",z22);
dotlabel.top("F",z23);
dotlabel.bot("G",z31);
dotlabel.bot("H",z32);
dotlabel.bot("I",z33);

endfig; %27


%in use
beginfig(28); % картинка по теории игр, малое дерево, лежащее на боку
u:=4; % курс уе

z00=(0u,5u);
z11=(0u,10u);
z12=(10u,10u);
z13=(20u,10u);
z21=(0u,0u);
z22=(10u,0u);
z23=(20u,0u);
z31=(0u,20u);
z32=(10u,20u);
z41=(0u,-10u);
z42=(10u,-10u);

draw z23--z22--z21--z00--z11--z12--z13;
draw z22--z12 dashed evenly;
draw z31--z11;
draw z32--z12;
draw z41--z21;
draw z42--z22;

dotlabel.top("(2;10)",z31);
dotlabel.top("(5;2)",z32);
dotlabel.bot("(2;10)",z41);
dotlabel.bot("(5;10)",z42);
dotlabel.rt("(0;5)",z13);
dotlabel.rt("(0;5)",z23);

dotlabel.lft(btex \bf{N} etex,z00);
dotlabel.lft(btex \bf{I} etex,z11);
dotlabel.lft(btex \bf{I} etex,z21);
dotlabel.ulft(btex \bf{II} etex,z12);
dotlabel.rt("",z22);
label.lft("p=0.5",0.5[z00,z11]);
label.lft("p=0.5",0.5[z00,z21]);

label.lft("a",0.5[z11,z31]);
label.lft("e",0.5[z21,z41]);
label.lft("b",0.5[z12,z32]);
label.lft("b",0.5[z22,z42]);
label.top("i",0.5[z11,z12]);
label.top("j",0.5[z12,z13]);
label.bot("k",0.5[z21,z22]);
label.bot("j",0.5[z22,z23]);

endfig; %28


%in use
beginfig(29); % картинка по теории игр, паук
u:=4; % курс уе

z00=(0u,0u);
z01=(-10u,0u);
z02=(10u,0u);
z11=(-10u,10u);
z12=(10u,10u);
z21=(-10u,-10u);
z22=(10u,-10u);
z31=(-15u,15u);
z32=(-5u,15u);
z33=(5u,15u);
z34=(15u,15u);
z41=(-15u,-15u);
z42=(-5u,-15u);
z43=(5u,-15u);
z44=(15u,-15u);


draw z11--z12 dashed evenly;
draw z21--z22 dashed evenly;
draw z11--z01--z00--z02--z12;
draw z21--z01;
draw z22--z02;
draw z31--z11--z32;
draw z33--z12--z34;
draw z41--z21--z42;
draw z43--z22--z44;

dotlabel.bot(btex \bf{N} etex,z00);
dotlabel.lft(btex \bf{I} etex,z01);
dotlabel.rt(btex \bf{I} etex,z02);
dotlabel.lft(btex \bf{II} etex,z11);
dotlabel.lft(btex \bf{II} etex,z21);
dotlabel.top("(2;2)",z31);
dotlabel.top("(1;3)",z32);
dotlabel.top("(3;2)",z33);
dotlabel.top("(2;0)",z34);
dotlabel.bot("(1;2)",z41);
dotlabel.bot("(2;1)",z42);
dotlabel.bot("(2;3)",z43);
dotlabel.bot("(3;0)",z44);

label.lft("U",0.5[z01,z11]);
label.lft("U",0.5[z02,z12]);
label.lft("D",0.5[z01,z21]);
label.lft("D",0.5[z02,z22]);

label.lft("l",0.5[z11,z31]);
label.lft("l",0.5[z12,z33]);
label.lft("l",0.5[z21,z41]);
label.lft("l",0.5[z22,z43]);

label.rt("r",0.5[z11,z32]);
label.rt("r",0.5[z12,z34]);
label.rt("r",0.5[z21,z42]);
label.rt("r",0.5[z22,z44]);

label.top("p=0.5",0.5[z00,z01]);
label.top("p=0.5",0.5[z00,z02]);

dotlabel.rt("",z12);
dotlabel.rt("",z22);
endfig; %29 паук 1




%in use
beginfig(30); % картинка по теории игр, паук2
u:=4; % курс уе

z00=(0u,0u);
z01=(-10u,0u);
z02=(10u,0u);
z11=(-10u,10u);
z12=(10u,10u);
z21=(-10u,-10u);
z22=(10u,-10u);
z31=(-15u,15u);
z32=(-5u,15u);
z33=(5u,15u);
z34=(15u,15u);
z41=(-15u,-15u);
z42=(-5u,-15u);
z43=(5u,-15u);
z44=(15u,-15u);


draw z11--z12 dashed evenly;
draw z21--z22 dashed evenly;
draw z11--z01--z00--z02--z12;
draw z21--z01;
draw z22--z02;
draw z31--z11--z32;
draw z33--z12--z34;
draw z41--z21--z42;
draw z43--z22--z44;

dotlabel.bot(btex \bf{N} etex,z00);
dotlabel.lft(btex \bf{I} etex,z01);
dotlabel.rt(btex \bf{I} etex,z02);
dotlabel.lft(btex \bf{II} etex,z11);
dotlabel.lft(btex \bf{II} etex,z21);
dotlabel.top("(1;0)",z31);
dotlabel.top("(3;1)",z32);
dotlabel.top("(0;1)",z33);
dotlabel.top("(2;0)",z34);
dotlabel.bot("(0;0)",z41);
dotlabel.bot("(2;1)",z42);
dotlabel.bot("(1;1)",z43);
dotlabel.bot("(3;0)",z44);

label.lft("U",0.5[z01,z11]);
label.lft("U",0.5[z02,z12]);
label.lft("D",0.5[z01,z21]);
label.lft("D",0.5[z02,z22]);

label.lft("l",0.5[z11,z31]);
label.lft("l",0.5[z12,z33]);
label.lft("l",0.5[z21,z41]);
label.lft("l",0.5[z22,z43]);

label.rt("r",0.5[z11,z32]);
label.rt("r",0.5[z12,z34]);
label.rt("r",0.5[z21,z42]);
label.rt("r",0.5[z22,z44]);

label.top("p=0.9",0.5[z00,z01]);
label.top("p=0.1",0.5[z00,z02]);

dotlabel.rt("",z12);
dotlabel.rt("",z22);
endfig; %30 паук 2



beginfig(31); % квадратное дерево трех игроков
u:=4;

z11=(0u,0u);
z12=(10u,0u);
z13=(20u,-10u);
z21=(0u,-10u);
z22=(10u,-10u);
z30=(-10u,-20u);
z31=(0u,-20u);
z32=(10u,-20u);
z33=(20u,-20u);

draw z30--z21--z11--z12--z22--z33;
draw z31--z21;
draw z32--z22;
draw z11--z12;
draw z21--z22 dashed evenly;
draw z12--z13;

dotlabel.top(btex \bf{I} etex,z11);
dotlabel.top(btex \bf{II} etex,z12);
dotlabel.rt(btex \bf{III} etex,z22);
dotlabel.bot("(4;4;4)",z30);
dotlabel.bot("(1;1;1)",z31);
dotlabel.bot("(5;5;0)",z32);
dotlabel.bot("(2;2;2)",z33);
dotlabel.bot("(3;3;0)",z13);

label.top("A",0.5[z11,z12]);
label.top("C",0.5[z12,z13]);
label.lft("B",0.5[z11,z21]);
label.lft("D",0.5[z12,z22]);

label.lft("L",0.5[z21,z30]);
label.rt("R",0.5[z21,z31]);
label.lft("L",0.5[z22,z32]);
label.rt("R",0.5[z22,z33]);

dotlabel("",z21);




% голова ослика just for fun
z50=(-10u,10u);
c:=0.7;
draw z11--z50 withcolor c*white;

z51=(-15u,8u);
z52=(-20u,0u);
z53=(-12u,5u);
draw z50..z51..z52..z53..z50 withcolor c*white;

z54=(-8u,15u);
z55=(-6u,16u);
z56=(-7u,11u);

z57=(-10u,13u);
z58=(-15u,14u);
z59=(-13u,11u);


draw z50..z54..z55..z56..z50 withcolor c*white;
draw z50..z57..z58..z59..z50 withcolor c*white;
endfig; % 31 (ослик или виселица)


beginfig(32); % природа выбирает очередность
u:=6;
z00=(0u,0u);
z11=(-10u,5u);
z12=(0u,5u);
z13=(10u,5u);
z14=(20u,5u);
z21=(-20u,-5u);
z22=(-10u,-5u);
z23=(0u,-5u);
z24=(10u,-5u);
z31=(10u,10u);
z41=(-10u,-10u);

draw z11--z14;
draw z21--z24;
draw z12--z23;
draw z41--z22;
draw z31--z13;
draw z12--z22 dashed evenly;
draw z13--z23 dashed evenly;

dotlabel.top(btex \bf{I} etex,z12);
dotlabel.bot(btex \bf{II} etex,z23);
dotlabel.rt(btex \bf{N} etex,z00);

label.rt("p=2/3",0.5[z00,z12]);
label.lft("p=1/3",0.5[z00,z23]);

label.top("L",0.5[z11,z12]);
label.top("R",0.5[z12,z13]);
label.bot("D",0.5[z13,z14]);
label.top("L",0.5[z21,z22]);
label.bot("U",0.5[z22,z23]);
label.bot("D",0.5[z23,z24]);
label.lft("R",0.5[z22,z41]);
label.rt("U",0.5[z13,z31]);

dotlabel.rt("(-2;-4)",z14);
dotlabel.rt("(4;8)",z24);
dotlabel.lft("(1;2)",z11);
dotlabel.lft("(4;2)",z21);
dotlabel.top("(3;5)",z31);
dotlabel.bot("(3;5)",z41);

dotlabel.rt("",z13);
dotlabel.rt("",z22);

endfig; %32 природа выбирает очередность хода



beginfig(33); % картинка по теории игр несовершенная - неполная
u:=4; % курс уе 
z[1][1]=(10u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z[3][5]=(25u,-20u);
z[3][6]=(35u,-20u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;
draw z[3][6]--z[2][3]--z[3][5];
draw z[1][1]--z[2][3];

dotlabel.bot("(0;1)",z[3][1]);
dotlabel.bot("(8;1)",z[3][2]);
dotlabel.bot("(3;2)",z[3][3]);
dotlabel.bot("(0;1)",z[3][4]);
dotlabel.bot("(4;4)",z[3][5]);
dotlabel.bot("(2;-1)",z[3][6]);


dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt(btex \bf{II} etex,z[2][3]);

dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.rt("M",0.5[z[1][1],z[2][2]]);
label.urt("R",0.5[z[1][1],z[2][3]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);
label.lft("l",0.5[z[2][3],z[3][5]]);
label.rt("r",0.5[z[2][3],z[3][6]]);

endfig; %33



%in use
beginfig(34); % картинка по теории игр, удлиненное дерево, лежащее на боку, 3 игрока
u:=4; % курс уе

z00=(0u,5u);
z11=(0u,10u);
z12=(10u,10u);
z13=(20u,10u);
z14=(25u,10u);
z21=(0u,0u);
z22=(10u,0u);
z23=(20u,0u);
z24=(25u,0u);
z31=(0u,20u);
z32=(10u,20u);
z33=(20u,20u);
z41=(0u,-10u);
z42=(10u,-10u);
z43=(20u,-10u);

draw z24--z23--z22--z21--z00--z11--z12--z13--z14;
draw z22--z12 dashed evenly;
draw z31--z11;
draw z32--z12;
draw z33--z13;
draw z41--z21;
draw z42--z22;
draw z43--z23;

dotlabel.top("(4;4;4)",z31);
dotlabel.top("(2;2;2)",z32);
dotlabel.top("(3;3;3)",z33);
dotlabel.bot("(-1;4;-1)",z41);
dotlabel.bot("(0;2;0)",z42);
dotlabel.bot("(-1;3;-1)",z43);
dotlabel.rt("(1;-5;1)",z14);
dotlabel.rt("(-1;3;-1)",z24);

dotlabel.lft(btex \bf{N} etex,z00);
dotlabel.lft(btex \bf{I} etex,z11);
dotlabel.lft(btex \bf{I} etex,z21);
dotlabel.ulft(btex \bf{II} etex,z12);
dotlabel.bot(btex \bf{III} etex,z13);
dotlabel.top(btex \bf{III} etex,z23);
dotlabel.rt("",z22);
label.lft("p=0.7",0.5[z00,z11]);
label.lft("p=0.3",0.5[z00,z21]);

label.lft("a",0.5[z11,z31]);
label.lft("e",0.5[z21,z41]);
label.lft("b",0.5[z12,z32]);
label.lft("b",0.5[z22,z42]);
label.top("i",0.5[z11,z12]);
label.top("j",0.5[z12,z13]);
label.bot("k",0.5[z21,z22]);
label.bot("j",0.5[z22,z23]);
label.top("d",0.5[z13,z14]);
label.lft("c",0.5[z13,z33]);
label.bot("h",0.5[z23,z24]);
label.lft("g",0.5[z23,z43]);


endfig; %34


%in use
beginfig(35); % картинка по теории игр, удлиненное дерево, лежащее на боку, 2 игрока
u:=4; % курс уе

z00=(0u,5u);
z11=(0u,10u);
z12=(10u,10u);
z13=(20u,10u);
z14=(25u,10u);
z21=(0u,0u);
z22=(10u,0u);
z23=(20u,0u);
z24=(25u,0u);
z31=(0u,20u);
z32=(10u,20u);
z33=(20u,20u);
z41=(0u,-10u);
z42=(10u,-10u);
z43=(20u,-10u);

draw z24--z23--z22--z21--z00--z11--z12--z13--z14;
draw z22--z12 dashed evenly;
draw z31--z11;
draw z32--z12;
draw z33--z13;
draw z41--z21;
draw z42--z22;
draw z43--z23;

dotlabel.top("(4;4)",z31);
dotlabel.top("(5;2)",z32);
dotlabel.top("(3;3)",z33);
dotlabel.bot("(-1;4)",z41);
dotlabel.bot("(0;2)",z42);
dotlabel.bot("(-1;3)",z43);
dotlabel.rt("(1;-5)",z14);
dotlabel.rt("(0;-5)",z24);

dotlabel.lft(btex \bf{N} etex,z00);
dotlabel.lft(btex \bf{I} etex,z11);
dotlabel.lft(btex \bf{I} etex,z21);
dotlabel.ulft(btex \bf{II} etex,z12);
dotlabel.bot(btex \bf{I} etex,z13);
dotlabel.top(btex \bf{I} etex,z23);
dotlabel.rt("",z22);
label.lft("p=0.5",0.5[z00,z11]);
label.lft("p=0.5",0.5[z00,z21]);

label.lft("a",0.5[z11,z31]);
label.lft("e",0.5[z21,z41]);
label.lft("b",0.5[z12,z32]);
label.lft("b",0.5[z22,z42]);
label.top("i",0.5[z11,z12]);
label.top("j",0.5[z12,z13]);
label.bot("k",0.5[z21,z22]);
label.bot("j",0.5[z22,z23]);
label.top("d",0.5[z13,z14]);
label.lft("c",0.5[z13,z33]);
label.bot("h",0.5[z23,z24]);
label.lft("g",0.5[z23,z43]);


endfig; %35





beginfig(36); % картинка по теории игр. Последовательная игра 2-х игроков.
u:=4; % курс уе
z[1][1]=(0u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];

dotlabel.bot("(1;0)",z[3][1]);
dotlabel.bot("(4;1)",z[3][2]);
dotlabel.bot("(2;1)",z[3][3]);
dotlabel.bot("(5;0)",z[3][4]);
dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.lft(btex \bf{II} etex,z[2][1]);
dotlabel.rt(btex \bf{II} etex,z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.urt("R",0.5[z[1][1],z[2][2]]);
label.lft("l",0.5[z[2][1],z[3][1]]);
label.rt("r",0.5[z[2][1],z[3][2]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);


endfig; %36



%in use
beginfig(37); % картинка по теории игр несовершенная - неполная
u:=4; % курс уе
z[1][1]=(10u,0u); % начало графа (точка 1-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[2][3]=(30u,-10u);
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][5]=(25u,-20u);
z[3][6]=(35u,-20u);

draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][3]--z[2][2] dashed evenly;
draw z[3][6]--z[2][3]--z[3][5];
draw z[1][1]--z[2][3];

dotlabel.bot("(0;2)",z[2][1]);
dotlabel.bot("(-1;-1)",z[3][3]);
dotlabel.bot("(3;2)",z[3][4]);
dotlabel.bot("(a;-1)",z[3][5]);
dotlabel.bot("(2;1)",z[3][6]);


dotlabel.ulft(btex \bf{I} etex,z[1][1]);
dotlabel.rt(btex \bf{II} etex,z[2][3]);

dotlabel.rt("",z[2][2]);
label.ulft("L",0.5[z[1][1],z[2][1]]);
label.rt("M",0.5[z[1][1],z[2][2]]);
label.urt("R",0.5[z[1][1],z[2][3]]);
label.lft("l",0.5[z[2][2],z[3][3]]);
label.rt("r",0.5[z[2][2],z[3][4]]);
label.lft("l",0.5[z[2][3],z[3][5]]);
label.rt("r",0.5[z[2][3],z[3][6]]);

endfig; %37 фигура



% in use
beginfig(38); % картинка по теории игр. 
u:=4; % курс уе
z[1][1]=(0u,0u); % продолжение графа (точки 2-го уровня)
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z01=(15u,10u); % настоящее начало
z10=(30u,0u); % досрочное окончание игры
z23=(20u,-10u);
z24=(40u,-10u);

draw z10--z01--z[1][1];
draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;
draw z23--z10--z24;


dotlabel.bot("(4;2)",z23);
dotlabel.bot("(4;1)",z24);
dotlabel.bot("(5;1)",z[3][1]);
dotlabel.bot("(1;3)",z[3][2]);
dotlabel.bot("(3;0)",z[3][3]);
dotlabel.bot("(4;3)",z[3][4]);

dotlabel.ulft(btex \bf{II} etex,z[1][1]);
dotlabel.urt(btex \bf{II} etex,z10);
dotlabel.lft(btex \bf{I} etex,z[2][1]);
dotlabel.ulft(btex \bf{I} etex,z01);
dotlabel.rt("",z[2][2]);
label.ulft("c",0.5[z[1][1],z[2][1]]);
label.urt("n",0.5[z[1][1],z[2][2]]);
label.lft("d",0.5[z[2][1],z[3][1]]);
label.rt("e",0.5[z[2][1],z[3][2]]);
label.lft("d",0.5[z[2][2],z[3][3]]);
label.rt("e",0.5[z[2][2],z[3][4]]);
label.urt("b",0.5[z10,z01]);
label.ulft("a",0.5[z[1][1],z01]);
label.ulft("f",0.5[z10,z23]);
label.urt("g",0.5[z10,z24]);
endfig; %38


%in use
beginfig(39); % картинка по теории игр, паук
u:=4; % курс уе

z00=(0u,0u);
z01=(-10u,0u);
z02=(10u,0u);
z11=(-10u,10u);
z12=(10u,10u);
z21=(-10u,-10u);
z22=(10u,-10u);
z31=(-15u,15u);
z32=(-5u,15u);
z33=(5u,15u);
z34=(15u,15u);
z41=(-15u,-15u);
z42=(-5u,-15u);
z43=(5u,-15u);
z44=(15u,-15u);


draw z11--z12 dashed evenly;
draw z21--z22 dashed evenly;
draw z11--z01--z00--z02--z12;
draw z21--z01;
draw z22--z02;
draw z31--z11--z32;
draw z33--z12--z34;
draw z41--z21--z42;
draw z43--z22--z44;

dotlabel.bot(btex \bf{N} etex,z00);
dotlabel.lft(btex \bf{I} etex,z01);
dotlabel.rt(btex \bf{I} etex,z02);
dotlabel.lft(btex \bf{II} etex,z11);
dotlabel.lft(btex \bf{II} etex,z21);
dotlabel.top("(1;1)",z31);
dotlabel.top("(2;2)",z32);
dotlabel.top("(1;3)",z33);
dotlabel.top("(4;0)",z34);
dotlabel.bot("(2;3)",z41);
dotlabel.bot("(0;1)",z42);
dotlabel.bot("(2;2)",z43);
dotlabel.bot("(3;1)",z44);

label.lft("L",0.5[z01,z11]);
label.lft("l",0.5[z02,z12]);
label.lft("R",0.5[z01,z21]);
label.lft("r",0.5[z02,z22]);

label.lft("d",0.5[z11,z31]);
label.lft("d",0.5[z12,z33]);
label.lft("D",0.5[z21,z41]);
label.lft("D",0.5[z22,z43]);

label.rt("u",0.5[z11,z32]);
label.rt("u",0.5[z12,z34]);
label.rt("U",0.5[z21,z42]);
label.rt("U",0.5[z22,z44]);

label.top("p=0.8",0.5[z00,z01]);
label.top("p=0.2",0.5[z00,z02]);

dotlabel.rt("",z12);
dotlabel.rt("",z22);
endfig; %39 паук 1



% in use
beginfig(40); % картинка по теории игр. 
u:=4; % курс уе
z[1][1]=(10u,10u); % старт
z[2][2]=(10u,-10u); % точки второго уровня
z[2][1]=(-10u,-10u); 
z[3][4]=(15u,-20u); % точки третьего уровня
z[3][3]=(5u,-20u);
z[3][2]=(-5u,-20u);
z[3][1]=(-15u,-20u);
z35=(35u,-20u);
z41=(10u,-30u);
z42=(20u,-30u);
z43=(30u,-30u);
z44=(40u,-30u);

draw z[3][1]--z[2][1]--z[3][2];
draw z[3][3]--z[2][2]--z[3][4];
draw z[2][1]--z[1][1]--z[2][2];
draw z[2][1]--z[2][2] dashed evenly;
draw z[3][4]--z35 dashed evenly;
draw z41--z[3][4]--z42;
draw z43--z35--z44;
draw z[1][1]--z35; \\

dotlabel.bot("(4;2)",z[3][1]);
dotlabel.bot("(3;1)",z[3][2]);
dotlabel.bot("(2;3)",z[3][3]);

dotlabel.bot("(5;4)",z41);
dotlabel.bot("(2;0)",z42);
dotlabel.bot("(3;1)",z43);
dotlabel.bot("(0;2)",z44);



dotlabel.ulft(btex \bf{N} etex,z[1][1]);
dotlabel.lft(btex \bf{I} etex,z[2][1]);
dotlabel.rt(btex \bf{II} etex,z35);
dotlabel.ulft(btex $[1-\mu]$ etex,z[2][2]);
dotlabel.top(btex $[\mu]$ etex,z[2][1]);

dotlabel.urt(btex $[\nu]$ etex,z[3][4]);
dotlabel.urt(btex $[1-\nu]$ etex,z35);


label.ulft(btex $p=0.3$ etex,0.5[z[1][1],z[2][1]]);
label.ulft(btex $p=0.2$ etex,0.5[z[1][1],z[2][2]]);
label.urt(btex $p=0.5$ etex,0.32[z[1][1],z35]);

label.lft("a",0.5[z[2][1],z[3][1]]);
label.rt("b",0.5[z[2][1],z[3][2]]);
label.lft("a",0.5[z[2][2],z[3][3]]);
label.rt("b",0.5[z[2][2],z[3][4]]);

label.lft("c",0.5[z[3][4],z41]);
label.rt("d",0.5[z[3][4],z42]);
label.lft("c",0.5[z35,z43]);
label.rt("d",0.5[z35,z44]);



endfig; %40





end;