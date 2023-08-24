input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../biber}
\usepackage{../akp1}
\usepackage{../letters}
\usepackage{../notation}
\usepackage{../envmnt}
\usepackage{../notation-vitya}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(2)
save u;
u:=1cm;

setbounds currentpicture to (-2.1,-1.7)*u--(2.1,-1.7)*u--(2.1,.8)*u--(-2.1,.8)*u--cycle;

z.www=(1,-3)*u;
z.q=(-1,-3)*u;
save p,q;
path p[];
path q[];

p[1]=circle((1/1,0)*u,u/1);
q[1]=circle((-1/1,0)*u,u/1);
draw p[1] yscaled .5;
draw q[1] yscaled .5;
draw ((support.lft(p[1],z.www)--z.www--support.rt(p[1],z.www))) yscaled .5;
draw ((support.rt(q[1],z.q)--z.q--support.lft(q[1],z.q))) yscaled .5;

for i=2 step 1 until 100:
p[i]=circle((1/i,0)*u,u/i);
q[i]=circle((-1/i,0)*u,u/i);
draw p[i] yscaled .5;
draw q[i] yscaled .5;
draw ((z.www--support(p[i],z.www)) cutbefore p[i-1]) yscaled .5;
draw ((z.q--support.lft(q[i],z.q)) cutbefore q[i-1]) yscaled .5;
endfor

endfig;

beginfig(5) 
save u,n;
u:=1.4cm;
n:=7;

draw (0,0)*u--(1,0)*u--(1,1)*u--(0,1)*u;

for i=2 step 1 until n:
draw (1/i,0)*u--(1/i,1)*u penhair;
endfor

dOt (0,0)*u,(0,1)*u;

label.lft(btex $\dots$ etex, (1/n,.5)*u);
label.lft(btex $p$ etex, (0,0)*u);
label.lft(btex $q$ etex, (0,1)*u);
label.rt(btex $\spc{X}$ etex, (.5,.5)*u);

endfig;

beginfig(10) 
save u,k;
u:=.7cm;
k=.5;


z.p0=(0,0)*u;
z.p1=(2,1)*u;
z.q0=(1.2,-1.9)*u;
z.q1=(3,-2.2)*u;

z.a=k[z.p0,z.p1];
z.b=k[z.q0,z.p1];
z.c=k[z.q0,z.q1];

draw z.p0--z.p1--z.q0--z.q1;
draw z.a--z.b--z.c penhair dashed evenly;
draw z.a--z.c penhair;
draw z.p0--z.q0 penhair;
draw z.p1--z.q1 penhair;

dOt z.p0,z.p1,z.q0,z.q1,z.a,z.b,z.c;

label.lft(btex $u$ etex, z.p0);
label.urt(btex $w$ etex, z.p1);
label.bot(btex $z$ etex, z.q1);
label.llft(btex $x$ etex, z.q0);
label.top(btex $v$ etex, z.a);
label.rt(btex $p$ etex, z.b);
label.bot(btex $y$ etex, z.c);
endfig;



beginfig(105) 
save u,p;
path p[];
u:=1.4cm;

z.A=origin;
z.B=(3,0)*u;
z.C=(1,2)*u;

draw z.A--z.B--z.C--cycle;

arcs(z.B, z.A, z.C, 12);

dOt z.A,z.B,z.C;


label.rt(btex $\phi=\tangle\mc\kappa\{a;b,c\}$ etex, z.A +14*unitvector(unitvector(z.B-z.A)+unitvector(z.C-z.A)) rotated 20);
label(btex $a=\side\kappa\{\phi;b,c\}$ etex rotated angle(z.B-z.C), .5[z.B,z.C]+8*unitvector(z.B-z.C) zscaled (0,1));
label.ulft(btex $b$ etex, .5[z.A,z.C]);
label.bot(btex $c$ etex, .5[z.A,z.B]);
endfig;

beginfig(110) 
save u,p;
path p[];
u:=1cm;

z.z=origin;
z.r=(1,1)*u;

p0=circle(z.z,z.r);

z.p=(.3,-.2)*u;
z.q=-z.p;

draw z.p--z.q;

z.s=(.5,-.5)*u;

p1= z.p{up}..z.r..z.q{-1,-1}..z.s..cycle;

draw p1;

p2=(subpath (0,2) of p1) rotated 180;

draw p2 dashed evenly;

clip currentpicture to p0;
draw p0;

dOt z.p,z.q,z.r,-z.r,z.z;

label.rt(btex $p$ etex, z.p);
label.ulft(btex $q$ etex, z.q);
label.urt(btex $z$ etex, z.z);
label.urt(btex $r$ etex, z.r);
label.llft(btex $r'$ etex, -z.r);

label.ulft(btex $\check\alpha$ etex, point 1.6 of p1+(1,0));
label.ulft(btex $\alpha_1^{*}$ etex, point .6 of p2+(1,0));
endfig;

beginfig(603)
save u,p;
path p[];
u:=.7cm;

z0=origin;
z1=(1,0)*u;
z2=2*z1;
z3=3*z1;
z4=4*z1;
z.e=4.5*z1;

z11=z1 + z1 rotated 90;
z21=z2 + z1 rotated 80;
z22=z2 + z1 rotated 100;
z31=z3 + z1 rotated 75;
z32=z3 + z1 rotated 90;
z33=z3 + z1 rotated 105;
z41=z4 + z1 rotated 69;
z42=z4 + z1 rotated 83;
z43=z4 + z1 rotated 97;
z44=z4 + z1 rotated 114;

draw z0--z.e ;
draw z1--z11 ;
draw z2--z21 ;
draw z2--z22 ;
draw z3--z31 ;
draw z3--z32 ;
draw z3--z33 ;
draw z4--z41 ;
draw z4--z42 ;
draw z4--z43 ;
draw z4--z44 ;

dOt z0,z1,z11,z2,z21,z22,z3,z31,z32,z33,z4,z41,z42,z43,z44;

label.rt(btex $\dots$ etex, z.e);

label.bot(btex $v_0$ etex, z0);
label.bot(btex $v_1$ etex, z1);
label.bot(btex $v_2$ etex, z2);
label.bot(btex $v_3$ etex, z3);
label.bot(btex $v_4$ etex, z4);
endfig;

beginfig(605) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.9[z.p,.4[z.x,z.y]];

draw z.x..z.z..z.y;
draw z.p{.1,1}..z.x;
draw z.p{1,.1}..z.y;
draw z.p{.5,.5}..z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $p$ etex, z.x);
label.rt(btex $r$ etex, z.y);
label.urt(btex $z$ etex, z.z);
label.llft(btex $q$ etex, z.p);

endfig;

beginfig(610) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.4[z.x,z.y];
z.yy=z.y rotatedabout(z.z,-20);

draw z.x--z.y;
draw z.p--z.x;
draw z.p--z.y dashed evenly;
draw z.p--z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $\tilde p$ etex, z.x);
label.rt(btex $\tilde r$ etex, z.y);
label.urt(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde q$ etex, z.p);

endfig;

beginfig(611) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.4[z.x,z.y];
z.yy=z.y rotatedabout(z.z,-20);

draw z.x--z.z--z.yy;
draw z.p--z.x;
draw z.p--z.yy;
draw z.p--z.z;

dOt z.x,z.yy,z.z,z.p;

label.top(btex $\tilde p$ etex, z.x);
label.rt(btex $\tilde r$ etex, z.yy);
label.urt(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde q$ etex, z.p);

endfig;

beginfig(615) 
save u;
u:=2cm;

z.p=origin;
z.x=(1,1)*u;
z.z=(1.2,-.8)*u;
z.y=.5[z.x,z.z];

labelarcsprof(z.x, z.p, z.y, 10, 26, btex $=\alpha^{23}+\eps$ etex rotated (.5*(angle(z.y-z.p)+angle(z.x-z.p))));
labelarcsprof2(z.y, z.p, z.z, 10, 25, btex $=\alpha^{12}+\eps$ etex rotated (.5*(angle(z.y-z.p)+angle(z.z-z.p))));

draw ddline(z.p,z.x)(0,.2);
draw ddline(z.p,z.y)(0,.2);
draw ddline(z.p,z.z)(0,.2);
draw z.x--z.z;

dOt z.p,z.x,z.y,z.z;

whitelabel(btex $t$ etex rotated angle(z.x-z.p), .5[z.p,z.x]+(0,-2)); 
whitelabel(btex $s(t,\tau)$ etex rotated angle(z.y-z.p), .7[z.p,z.y]+(0,1)); 
whitelabel(btex $\tau$ etex rotated angle(z.z-z.p), .5[z.p,z.z]);
endfig;

beginfig(805) 
save u,p;
path p[];
u:=.7cm;

z.p=origin;
z.x=(.7,2)*u;
z.y=(1.2,-1.6)*u;
z.z=(-2.3,-.2)*u;

p0=z.p{.5,1}..z.x;
p1=z.p{.6,-1}..z.y;
p2=z.p{-1,.1}..z.z;

z.w=point .3 of p2;

p3=z.x{.5,-1}..z.y;
p4=z.y{-1,0}..z.z;
p5=z.z{1,1}..z.x;

p6=z.w{.3,1}..z.x;
p7=z.w{.4,-1}..z.y;

draw p0;
draw p1;
draw p2;
draw p3;
draw p4;
draw p5;
draw p6;
draw p7;

dOt z.p,z.x,z.y,z.z,z.w;

label.rt(btex $p$ etex, z.p);
label.top(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
label.lft(btex $z$ etex, z.z);
label.llft(btex $w$ etex, z.w);
endfig;

beginfig(810) 
save u,p,k;
path p[];
u:=1.2cm;
k:=1.3;

z.p=origin;
z.x=(-1,1.4)*u;
z.y=(1.4,1.4)*u;

draw z.p--k*z.x;
draw z.p--k*z.y;

p0=z.x{1,.7}..z.y;

draw p0  pensemibold;
hatchfill p0--z.p--cycle withcolor (30, 2mm, -.5bp);
hatchfill p0--k*z.y{up}..tension 2..k*z.x--cycle withcolor (-60, 2mm, -.5bp);

dOt z.p;

whitelabel(btex subgraph etex, (.2,1.2)*u);
whitelabel(btex supergraph etex, (.2,2.2)*u);
whitelabel.ulft(btex $\tilde\gamma$ etex, point .15 of p0);
label.bot(btex $\tilde p$ etex, z.p);
endfig;

beginfig(815) 
save u,p;
path p[];
u:=.7cm;

z.p=origin;
z.x0=(2,1)*u;
z.x5=(-1,2.5)*u;

p0=z.x0{up}..z.x5;
z.x1=point .2 of p0;
z.x2=point .4 of p0;
z.x3=point .6 of p0;
z.x4=point .8 of p0;

draw z.x0--z.x1--z.x2--z.x3--z.x4--z.x5;
draw z.p--z.x0;
draw z.p--z.x1;
draw z.p--z.x2;
draw z.p--z.x3;
draw z.p--z.x4;
draw z.p--z.x5;

dOt z.p, z.x0, z.x1, z.x2, z.x3, z.x4, z.x5; 

label.llft(btex $\tilde p$ etex, z.p);

label.lrt(btex $\tilde x_0$ etex, z.x0);
label.rt(btex $\tilde x_1$ etex, z.x1);
label.top(btex $\dots$ etex rotated (angle(z.x3)-90), z.x3);
label.lft(btex $\tilde x_n$ etex, z.x5);
endfig;

beginfig(820) 
save u,p;
path p[];
u:=.7cm;

z.x=(0,0)*u;
z.p=(2,-3)*u;
z.q=(2,4)*u;
z.xx=.4[z.x,z.q];

draw z.q--z.x--z.p--z.xx;

dOt z.p,z.q,z.x,z.xx;

whitelabelarcsprof(z.p, z.x, z.q, 12, 25, btex $\le \mangle\hinge x p q$ etex);
labelarcsprof2(z.p, z.xx, z.q, 12, 26, btex $\ge \mangle\hinge{x'}p q$ etex);

label.rt(btex $\tilde p$ etex, z.p);
label.rt(btex $\tilde q$ etex, z.q);
label.lft(btex $\tilde x$ etex, z.x);
label.ulft(btex $\tilde x'$ etex, z.xx);
endfig;

beginfig(825) 
save u,p;
path p[];
u:=1cm;

z.p=(0,0)*u;
z.q=(6,0)*u;
z.x0=(-2,2)*u;
z.x1=.25[z.x0,z.q];
z.x2=.5[z.x0,z.q];
z.x3=.5[z.x2,z.p];
z.x4=.5[z.x3,z.q];
z.x5=.5[z.x4,z.p];

draw z.x0--z.p;
draw z.x0--z.q;
draw z.x1--z.p;
draw z.x2--z.p;
draw z.x3--z.q;
draw z.x4--z.p;
draw z.x5--z.q;

dOt z.p,z.q,z.x0,z.x1,z.x2,z.x3,z.x4,z.x5;

label.bot(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);
label.top(btex $x_0$ etex, z.x0);
label.urt(btex $x_1$ etex, z.x1);
label.urt(btex $x_2$ etex, z.x2);
label.ulft(btex $x_3$ etex, z.x3);
whitelabel.urt(btex $x_4$ etex, z.x4);
label.bot(btex $x_5$ etex, z.x5);

endfig;

beginfig(830) 
save u,p;
path p[];
u:=1cm;

z.q=origin;
z.z=(-1,0)*u;
z.x=(1,.4)*u;
z.y=(1,-.5)*u;

draw z.z--z.q;
draw z.q{right}..z.x;
draw z.q{right}..z.y;

dOt z.q,z.x,z.y,z.z;

label.bot(btex $q$ etex, z.q);
label.top(btex $x_\eps$ etex, z.x);
label.bot(btex $y_\eps$ etex, z.y);
label.bot(btex $z_\eps$ etex, z.z);

endfig;

beginfig(835) 
save u,p;
path p[];
u:=.7cm;

z.p=origin;
z.x=(1.4,3)*u;
z.y=(2,-.3)*u;

p1=z.p{1,3}..z.x;
p2=z.p{1,-.5}..z.y;

z.xxx=point .3 of p1;
z.yyy=point .4 of p2;

p0=z.xxx{1,-1}..z.yyy;

draw p0;
draw p1;
draw p2;

dOt z.p,z.x,z.y,z.xxx,z.yyy;

label.bot(btex $p_n$ etex, z.p);
label.top(btex $x_n$ etex, z.x);
label.lrt(btex $y_n$ etex, z.y);
label.ulft(btex $\bar x_n$ etex, z.xxx);
label.bot(btex $\bar y_n$ etex, z.yyy);
endfig;

beginfig(840) 
save u,p;
path p[];
u:=1cm;

z.o=origin;
z.z=(-2,0)*u;
z.p=1.3[z.z,z.o];
z.r=z.z rotated 50;
z.q=z.z rotated -60;
z.qq=z.p+((z.q-z.p) zscaled (.5,-.15));
z.rr=z.p+((z.r-z.p) zscaled (.5,.15));

p0=arc(z.r,z.z,z.q);
p1=arc(z.q,z.qq,z.p);
p2=arc(z.p,z.rr,z.r);

mark_rt_angle(z.p,z.z,z.z+z.p rotated 90);
mark_rt_angle(z.p,z.z,z.z+z.p rotated -90);

clip currentpicture to (p0--p1--p2--cycle);

draw p0;
draw p1;
draw p2;
draw z.z--z.p;

dOt z.p,z.q,z.r,z.z;

label.rt(btex $\tilde p$ etex, z.p);
label.top(btex $\tilde q$ etex, z.q);
label.bot(btex $\tilde r$ etex, z.r);
label.lft(btex $\tilde z_0$ etex, z.z);

endfig;

beginfig(905) 
save u,p;
path p[];
u:=1cm;

z.p1=(.1,-1)*u;
z.p2=(-.2,1)*u;
z.x1=(-1,.1)*u;
z.x2=(1,0)*u;
z.z=.4[z.p1,z.p2];

draw z.p1--z.p2--z.x1--z.p1--z.x2--z.p2;
draw z.x1--z.z--z.x2 dashed evenly;

dOt z.x1,z.x2,z.p1,z.p2,z.z;

label.bot(btex $p^1$ etex, z.p1);
label.top(btex $p^2$ etex, z.p2);
label.lft(btex $x^1$ etex, z.x1);
label.rt(btex $x^2$ etex, z.x2);
label.urt(btex $z$ etex, z.z);
endfig;

beginfig(910) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.9[z.p,.4[z.x,z.y]];

draw z.x..z.z..z.y;
draw z.p{.1,1}..z.x;
draw z.p{1,.1}..z.y;
draw z.p{.5,.5}..z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $x$ etex, z.x);
label.rt(btex $y$ etex, z.y);
label.urt(btex $z$ etex, z.z);
label.llft(btex $p$ etex, z.p);

endfig;

beginfig(915) 
save u,p;
path p[];
u:=1cm;

z.p1=(.1,-1)*u;
z.p2=(-.2,1)*u;
z.x1=(-1,.1)*u;
z.x2=(1,0)*u;
z.z=whatever[z.p1,z.p2]=whatever[z.x1,z.x2];

draw z.p1--z.p2--z.x1--z.p1--z.x2--z.p2;
draw z.x1--z.x2 dashed evenly;

dOt z.x1,z.x2,z.p1,z.p2,z.z;

label.bot(btex $\tilde p^1$ etex, z.p1);
label.top(btex $\tilde p^2$ etex, z.p2);
label.lft(btex $\tilde x^1$ etex, z.x1);
label.rt(btex $\tilde x^2$ etex, z.x2);
label.urt(btex $\tilde q$ etex, z.z);
endfig;

beginfig(920) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.9[z.p,.4[z.x,z.y]];

draw z.x..z.z..z.y;
draw z.p{.1,1}..z.x;
draw z.p{1,.1}..z.y;
draw z.p{.5,.5}..z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $x$ etex, z.x);
label.rt(btex $y$ etex, z.y);
label.urt(btex $z$ etex, z.z);
label.llft(btex $p$ etex, z.p);

endfig;

beginfig(925) 
save u,p;
u:=1.7cm;
path p[];

z.x=(0,0)*u;
z.y=(2,0)*u;
z.z=.55[z.x,z.y];
z.zx=z.z rotatedabout(z.x,-25);
z.zxx=z.z rotatedabout(z.x,-15);
z.zy=z.z rotatedabout(z.y,30);
z.zyy=z.z rotatedabout(z.y,20);
z.p=z.zy+((z.zx-z.zy) zscaled (.5,3));
z.zxy=z.zx rotatedabout(z.p,-2);

p0=arc(z.z,z.zxx,z.zx)--arc(z.zx,z.zxy,z.zy)--(arc(z.zy,z.zyy,z.z))--cycle;

fill p0 withcolor 0;

p1=arc(z.z,z.zxx,z.zx);

for i=0 step 3 until abs(z.x-z.z):
draw p1 shifted -z.x scaled ((abs(z.x-z.z)-i)/(abs(z.x-z.z))) shifted z.x;
endfor

p2=arc(z.zy,z.zyy,z.z);

for i=0 step 3 until abs(z.y-z.z):
draw p2 shifted -z.y scaled ((abs(z.y-z.z)-i)/(abs(z.y-z.z))) shifted z.y;
endfor

p3=arc(z.zx,z.zxy,z.zy);

for i=0 step 3 until abs(z.p-z.zx):
draw p3 shifted -z.p scaled ((abs(z.p-z.zx)-i)/(abs(z.p-z.zx))) shifted z.p;
endfor

draw z.x--z.y--z.p--cycle;
draw z.x--z.zx--z.p--z.zy--z.y;


dOt z.p,z.x,z.y,z.z,z.zx,z.zy;

label.lft(btex $\tilde x$ etex, z.x);
label.rt(btex $\tilde y$ etex, z.y);
label.top(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde z_y$ etex, z.zx);
label.lrt(btex $\tilde z_x$ etex, z.zy);
label.bot(btex $\tilde p$ etex, z.p);

endfig;

beginfig(930) 
save u,p;
path p[];
u:=1cm;

z.p1=(.1,-1)*u;
z.p2=(-.2,1)*u;
z.x1=(-1,.1)*u;
z.x2=(1,0)*u;
z.z=whatever[z.p1,z.p2]=whatever[z.x1,z.x2];

draw z.p1--z.p2--z.x1--z.p1--z.x2--z.p2;
draw z.x1--z.x2 dashed evenly;

dOt z.x1,z.x2,z.p1,z.p2,z.z;

label.bot(btex $\dot p$ etex, z.p1);
label.top(btex $\dot z$ etex, z.p2);
label.lft(btex $\dot x$ etex, z.x1);
label.rt(btex $\dot y$ etex, z.x2);
label.urt(btex $\dot w$ etex, z.z);
endfig;

beginfig(935) 
save u,p,n;
path p[];
u:=1cm;
n=5;

z.p=origin;
z.x=(-3,-4)*u;
z.y=(3.5,-4)*u;

draw z.x--z.y;
draw z.p--z.x;
draw z.p--z.y;

z.x[0][n]=z.x;
z.x[n][n]=z.y;
for i=1 step 1 until n-1:
z.x[i][n]=(i/n+normaldeviate/(20*n))[z.x,z.y];
draw z.p--z.x[i][n];
endfor

for i=0 step 1 until n:
for j=1 step 1 until n-1:
z.x[i][j]=(j/n+normaldeviate/(20*n))[z.p,z.x[i][n]];
endfor
endfor

for i=1 step 1 until n:
for j=1 step 1 until n-1:
draw z.x[i-1][j+1]--z.x[i][j]--z.x[i-1][j];
endfor
endfor

for i=0 step 1 until n:
for j=1 step 1 until n:
dOt z.x[i][j];
endfor
endfor

dOt z.p;


label.urt(btex $p=x^{0,0}=\dots=x^{N,0}$ etex, z.p);
label.lrt(btex $y=x^{N,N}$ etex, z.y);
label.llft(btex $x^{0,N}=x$ etex, z.x);
label.ulft(btex $x^{0,1}$ etex, z.x[0][1]);
label.urt(btex $x^{N,1}$ etex, z.x[n][1]);
label.bot(btex $x^{1,N}$ etex, z.x[1][n]);
label.bot(btex $\dots$ etex, z.x[3][n]+(0,-2));
label(btex $\dots$ etex rotated angle(z.p-z.x), z.x[0][3]+(-3,3));
label(btex $\dots$ etex rotated angle(z.y-z.p), z.x[n][3]+(3,3));
endfig;

beginfig(940) 
save u,p;
u:=2cm;
path p[];

z.a=(0,0)*u;
z.b=(1.1,0)*u;
z.c=(1.9,0)*u;
z.d=(3,0)*u;

z.z1=(1.4,.3)*u;
z.z2=(1.5,-.2)*u;
z.x0=(.5,.1)*u;
z.x1=1.8[z.x0,z.z1];
z.x2=1.9[z.x0,z.z2];



p1=z.a{.1,1}..z.c{.2,-1}..cycle;
p2=z.b{.2,1}..z.d{-.3,-1}..cycle;

draw p1;
draw p2;

hatchfill p1 withcolor (77, 1.5mm, -.5bp);
hatchfill p2 withcolor (177, 1.5mm, -.5bp);

draw z.x0--z.x1--z.x2--cycle pensemibold;
draw z.z1--z.z2--z.x1 pensemibold;

dOt z.x0,z.x1,z.x2,z.z1,z.z2;

whitelabel.urt(btex $\spc{U}^1$ etex, point 1.7 of p1);
whitelabel.lft(btex $\spc{U}^2$ etex, point 1 of p2);
whitelabel.top(btex $A$ etex, point 1.6 of p2);

whitelabel.ulft(btex $x^0$ etex, z.x0);
whitelabel.urt(btex $x^1$ etex, z.x1);
whitelabel.lrt(btex $x^2$ etex, z.x2);
whitelabel.top(btex $z^1$ etex, z.z1);
whitelabel.bot(btex $z^2$ etex, z.z2+(0,-1));
endfig;

beginfig(945) 
save u,p,n;
path p[];
u:=1cm;
n=10;

p0=(0,0)*u--(5,0)*u;

draw p0;

for i=0 step 1/n until 1.1:
draw circle(point i of p0, .7*u);
dOt point i of p0;
endfor

whitelabel.lft(btex $\spc{B}^0$ etex,(-4,0) +point 0 of p0);
whitelabel.bot(btex $\spc{B}^1$ etex, (0,-4) +point 1/n of p0);
whitelabel.bot(btex $\dots$ etex rotated angle(direction (n+1)/(2*n) of p0), (2,-1)+point (n+1)/(2*n) of p0);
whitelabel.rt(btex $\spc{B}^n$ etex, (4,0) +point 1 of p0);
endfig;

beginfig(950) 
save u,p;
path p[];
u:=.8cm;

z.p=(-1,0)*u;
z.z=(1,0)*u;
z.y=(1.4,1)*u;
z.x=z.y yscaled -1;

p0=z.p--z.x--z.z--z.y--cycle;

hatchfill p0 withcolor (30, 1mm, -.5bp);
draw p0;

dOt z.p,z.x,z.y,z.z;

whitelabel(btex $\spc{Q}$ etex, .7[z.p,z.z]);
label.bot(btex $x$ etex, z.x);
label.top(btex $y$ etex, z.y);
label.rt(btex $z$ etex, z.z);
label.lft(btex $p$ etex, z.p);
endfig;

beginfig(955) 
save u,p;
path p[];
u:=1cm;

z.p=origin;
z.x0=(7,0)*u;
z.x1=(3,.7)*u;
z.x2=(2,2)*u;
z.x3=z.y3=(2.8,3.3)*u;

draw z.x0--z.x1--z.x2--z.y3 pensemibold;

p10=circle(z.p,z.y3);
p1=circle(z.x1,abs(z.x2-z.x1)+abs(z.x3-z.x2));
p0=circle(z.x0,abs(z.x1-z.x0)+abs(z.x2-z.x1)+abs(z.x3-z.x2));

z.y2=cross(p10,p1);
draw z.x1--z.y2;

z.y1=cross(p10,p0);
draw z.x0--z.y1;

z.x1x2=z.x1+abs(z.x2-z.x1)*unitvector(z.y2-z.x1);
z.x0x1=z.x0+abs(z.x1-z.x0)*unitvector(z.y1-z.x0);
z.x0x2=z.x0+(abs(z.x1-z.x0)+abs(z.x2-z.x1))*unitvector(z.y1-z.x0);

draw z.p--z.x0 dashed evenly;
draw z.p--z.x1 dashed evenly;
draw z.p--z.x2 dashed evenly;
draw z.p--z.x3 dashed evenly;
draw z.p--z.y3 dashed evenly;
draw z.p--z.y2 dashed evenly;
draw z.p--z.y1 dashed evenly;

whiterimmark(z.x0--z.x1,z.x0--z.x0x1);
whiterimmark2(z.x1--z.x2,z.x1--z.x1x2,z.x0x1--z.x0x2);
whiterimmark3(z.x2--z.y3,z.x1x2--z.y2,z.x0x2--z.y1);
whiterimmark10(z.p--z.y1,z.p--z.y2,z.p--z.y3);

dOt z.p,z.x0,z.x1,z.x2,z.y1,z.y2,z.y3,z.x1x2,z.x0x1,z.x0x2;

label.rt(btex $x^0$ etex, z.x0);
label.bot(btex $x^1$ etex, z.x1);
whitelabel.bot(btex $x^2$ etex, z.x2);
label.urt(btex $x^3=y^3$ etex, z.y3);
label.urt(btex $y^2$ etex, z.y2);
label.urt(btex $y^1$ etex, z.y1);
label.lft(btex $p$ etex, z.p);
endfig;

beginfig(960) 
save u,p;
path p[];
u:=1cm;

z.x1=(0,0)*u;
z.x2=(-.6,-1)*u;
z.x3=(1,-1.4)*u;
z.x4=(2.4,-.8)*u;
z.x5=(2,0)*u;
z.x6=(2.1,1.4)*u;

p0=z.x5--z.x1--z.x2--z.x3--z.x4--cycle;
p1=z.x5--z.x6--z.x1;

hatchfill p0 withcolor (30, 2mm, -.5bp);
hatchfill p1--cycle withcolor (120, 2mm, -.5bp);

draw p0;
draw p1;

dOt z.x1,z.x2,z.x3,z.x4,z.x5,z.x6;

whitelabel(btex $R_{n-1}$ etex, .5[.5[z.x1,z.x5],z.x3]);
whitelabel(btex $\dot R$ etex, .3[.5[z.x1,z.x5],z.x6]);
label.ulft(btex $\tilde x^1$ etex, z.x1);
label.lft(btex $\tilde x^2$ etex, z.x2);
label(btex $\dots$ etex rotated angle(z.x4-z.x3), 
.5[z.x3,z.x4]+4*unitvector(z.x3-z.x4) rotated 90);
label.rt(btex $\tilde x^{n-1}$ etex, z.x5);
label.top(btex $\dot x^n$ etex, z.x6);
endfig;

beginfig(970) 
save u,p;
path p[];
u:=1.4cm;

z0=(0,0)*u;
z1=(1,-.8)*u;
z2=(2,0)*u;
z3=(1,-1.4)*u;

z.x=(0,-.3)*u;
z.y=(2,-.2)*u;
z.t=(1.6,-.8)*u;

p0=z0..z1..z2..z3..cycle;
p1=
point 0 of p0+(10*unitvector(direction 0 of p0) rotated 90)..
point 1 of p0+(10*unitvector(direction 1 of p0) rotated 90)..
point 2 of p0+(10*unitvector(direction 2 of p0) rotated 90)..
point 3 of p0+(10*unitvector(direction 3 of p0) rotated 90)..cycle;
p2=z.x{1,-2}..z.t..{1,2}z.y;

hatchfill p0--reverse(p1)--cycle withcolor (77, 1mm, -.5bp);
draw p0;
draw p1;
draw z.t--z.x--z.y;
draw p2;

dOt z.t,z.x,z.y;

label.top(btex $K$ etex, z3);
whitelabel(btex $\Omega$ etex, point 3.5 of p0);
label.lft(btex $x$ etex, z.x);
label.rt(btex $y$ etex, z.y);
label.rt(btex $\alpha(s)$ etex, z.t);
endfig;

beginfig(975) 
save u;
u:=1cm;

z.p=origin;
z.x=(1,.4)*u;
z.y=(-.2,-.7)*u;
z.z=(-.7,.8)*u;

draw z.p--z.x;
draw z.p--z.y;
draw z.p--z.z;

dOt z.p,z.x,z.y,z.z;

label.lrt(btex $p$ etex, z.p);
label.rt(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
label.lft(btex $z$ etex, z.z);

endfig;

beginfig(1005) 
save u,p;
path p[];
u:=1cm;

z.x1=(0,0)*u;
z.x2=(-.6,-2)*u;
z.x3=(1.4,-.8)*u;

z.p1=.4[z.x3,.2[z.x1,z.x2]];
z.p2=.4[z.x1,.2[z.x2,z.x3]];
z.p3=.4[z.x2,.2[z.x3,z.x1]];

p1=z.x1{-1,-.5}..z.x2;
p2=z.x2{1,0}..z.x3;
p3=z.x3{-1,2}..z.x1;

p4=z.x1..z.p2..z.p3;
p5=z.x2..z.p3..z.p1;
p6=z.x3..z.p1..z.p2;

draw p1;
draw p2;
draw p3;
draw p4;
draw p5;
draw p6;

hatchfill 
(subpath (1,2) of p4)--
(subpath (1,2) of p5)--
(subpath (1,2) of p6)--cycle 
withcolor (30, 1mm, -.5bp);

dOt z.x1,z.x2,z.x3,z.p1,z.p2,z.p3;

label.top(btex $\tilde x^1$ etex, z.x1);
label.bot(btex $\tilde x^2$ etex, z.x2);
label.rt(btex $\tilde x^3$ etex, z.x3);
label.bot(btex $\tilde p^1$ etex, z.p1+(2,0));
label.lft(btex $\tilde p^2$ etex, z.p2);
label.lft(btex $\tilde p^3$ etex, z.p3);
endfig;

beginfig(1010) 
save u,p,q;
path p[];
path q[];
u:=1cm;

z.x1=origin;
z.x2=(3,0)*u;
z.x3=(.7,3)*u;

z.shift=(5,0)*u;

z.p3=z.x2 zscaled(.4,.1);
z.pr3= .3*z.x3;

p1= circle(z.x1,z.p3-z.x1);
p2= circle(z.x2,z.p3-z.x2);
p3= circle(z.x3,z.pr3-z.x3);

z.p2=cross.rt(p1,p3);
z.p1=cross.lft(p2,p3);

z.px2=z.x2 rotated (angle(z.p2)-angle(z.p3));

draw z.x1--z.x2--z.x3--cycle;
draw z.x1--z.p3--z.x2--z.p1--z.x3--z.p2--cycle;
draw z.p2--z.px2--z.x1;

hatchfill 
z.x1--z.p3--z.x2--cycle
withcolor (30, 1mm, -.5bp);

hatchfill z.x2--z.p1--z.x3--cycle 
withcolor (110, 1mm, -.5bp);

hatchfill z.x3--z.p2--z.x1--cycle
withcolor (70, 1mm, -.5bp);

whiterimmark(z.x1--z.p2,z.x1--z.p3);
whiterimmark2(z.x2--z.p1,z.x2--z.p3,,z.px2--z.p2);
whiterimmark3(z.x3--z.p2,z.x3--z.p1);

z.q3=z.x2 zscaled(1.4,.15);
z.qr3= .1*z.x3;

q1= circle(z.x1,z.q3-z.x1);
q2= circle(z.x2,z.q3-z.x2);
q3= circle(z.x3,z.qr3-z.x3);

z.q2=cross.rt(q1,q3);
z.q1=cross.lft(q2,q3);

z.qx2=z.x2 rotated (angle(z.q2)-angle(z.q3));

draw (z.x1--z.x2--z.x3--cycle) shifted z.shift;
draw (z.x1--z.q3--z.x2--z.q1--z.x3--z.q2--cycle) shifted z.shift;
draw (z.q2--z.qx2--z.x1) shifted z.shift;

hatchfill 
(z.x1--z.q3--z.x2--cycle)  shifted z.shift
withcolor (30, 1mm, -.5bp);

hatchfill (z.x2--z.q1--z.x3--cycle)  shifted z.shift 
withcolor (110, 1mm, -.5bp);

hatchfill (z.x3--z.q2--z.x1--cycle)  shifted z.shift
withcolor (70, 1mm, -.5bp);

whiterimmark((z.x1--z.q2)  shifted z.shift,
(z.x1--z.q3)  shifted z.shift);
whiterimmark2((z.x2--z.q1)  shifted z.shift,
(z.x2--z.q3)  shifted z.shift,
(z.qx2--z.q2)  shifted z.shift);
whiterimmark3((z.x3--z.q2)  shifted z.shift,
(z.x3--z.q1)  shifted z.shift);

dOt z.x1,z.x2,z.x3,z.p1,z.p2,z.p3,z.px2;

dOt z.x1 + z.shift,z.x2+ z.shift,z.x3+ z.shift,z.q1+ z.shift,z.q2+ z.shift,z.q3+ z.shift,z.qx2+ z.shift;


label.llft(btex $\tilde x^1$ etex, z.x1);
label.lrt(btex $\tilde x^2$ etex, z.x2);
label.top(btex $\tilde x^3$ etex, z.x3);
whitelabel.llft(btex $\tilde p^1$ etex, z.p1);
whitelabel.ulft(btex $\tilde p^2$ etex, z.p2);
whitelabel.bot(btex $\tilde p^3$ etex, z.p3);
label.urt(btex $\dot x^2$ etex, z.px2);

label.llft(btex $\tilde x^1$ etex, z.x1+ z.shift);
label.lrt(btex $\tilde x^2$ etex, z.x2+ z.shift);
label.top(btex $\tilde x^3$ etex, z.x3+ z.shift);
whitelabel.lft(btex $\tilde p^1$ etex, z.q1+ z.shift);
label.rt(btex $\tilde p^2$ etex, z.q2+ z.shift);
label.rt(btex $\tilde p^3$ etex, z.q3+ z.shift);
label.lrt(btex $\dot x^2$ etex, z.qx2+ z.shift);
endfig;

beginfig(1015) 
save u,p;
path p[];
u:=1cm;

z.o=origin;
z0=(0,1)*u;
z1=z0 rotated (1*360/5);
z2=z0 rotated (2*360/5);
z3=z0 rotated (3*360/5);
z4=z0 rotated (4*360/5);

draw z0--z1--z2--z3--z4--cycle;
draw z0--z2--z4--z1--z3--cycle dashed evenly;

dOt z.o,z0,z1,z2,z3,z4;
endfig;

beginfig(1020)
u:=1.6cm;
save p;path p[];

z.o=origin;
z.p=(0,1)*u;
z.left=z.p rotated -45;
z.leftend=2.4*z.left;
z.right=z.p rotated 45;
z.rightend=2.4*z.right;
z.x=z.p rotated 95;
z.hatx=altitude(z.o,z.x,z.right)+.2*z.p;
z.phix=(z.hatx--z.p+z.hatx) intersectionpoint circle(z.o,z.p);


p0=z.rightend--z.o--z.leftend{-1,1}..2*z.p..{-1,-1}cycle;

z.xend=(.3*z.p+z.hatx--3*z.p+z.hatx) intersectionpoint p0;

hatchfill p0  withcolor (20, 1mm, -.2bp);

draw arc(z.left,z.p,z.right) penbold;
draw z.rightend--z.o--z.leftend;
draw z.hatx--z.xend;
draw z.o--((z.p--3*z.p) intersectionpoint p0);

dOt z.o,z.p,z.hatx,z.phix;

label.llft(btex $\0$ etex, z.o);
whitelabel.urt(btex $z$ etex, z.p);
whitelabel.rt(btex $s$ etex, z.hatx);
whitelabel.urt(btex $\bar s$ etex, z.phix+(0,3));
whitelabel.lft(btex $\alpha$ etex, z.p+z.hatx);
whitelabel(btex $\mathring{\spc{U}}=\Cone \spc{U}$ etex, (1.8*z.p) rotated -25);
whitelabel.urt(btex $\spc{U}$ etex, z.p rotated -30);
endfig;

beginfig(1025) 
save u,p;
path p[];
u:=1.4cm;

z.x=(0.1,0.1)*u;
z.p1=(1,-1.1)*u;
z.p2=(2.1,-1)*u;
z.p3=(3.2,-1.1)*u;
z.p4=(4,-.9)*u;
z.y=(5,0)*u;
z.q1=(1.2,.9)*u;
z.q2=(2.1,1.1)*u;
z.q3=(3.2,1)*u;
z.q4=(4,.8)*u;

z.z1=.4[z.p1,z.q1];
z.z2=.4[z.p2,z.q2];
z.z3=.4[z.p3,z.q3];
z.z4=.4[z.p4,z.q4];

draw z.x--z.z1--z.z2--z.z3--z.z4--z.y;
draw z.p1--z.q1;
draw z.p2--z.q2;
draw z.p3--z.q3;
draw z.p4--z.q4;

draw z.x--z.p1--z.p2--z.p3--z.p4--z.y--z.q4--z.q3--z.q2--z.q1--cycle dashed evenly;
draw z.p1--z.q2--z.p3--z.q4 dashed evenly;
draw z.q1--z.p2--z.q3--z.p4 dashed evenly;

dOt z.x,z.y,
z.p1,z.p2,z.p3,z.p4,
z.q1,z.q2,z.q3,z.q4,
z.z1,z.z2,z.z3,z.z4;

label.lft(btex $\tilde x$ etex, z.x);
label.rt(btex $\tilde y$ etex, z.y);

label.llft(btex $\tilde z^1$ etex, z.z1);
label.ulft(btex $\tilde z^2$ etex, z.z2);
label.ulft(btex $\tilde z^3$ etex, z.z3);
label.ulft(btex $\tilde z^4$ etex, z.z4);

label.bot(btex $\tilde p^1$ etex, z.p1);
label.bot(btex $\tilde p^2$ etex, z.p2);
label.bot(btex $\tilde p^3$ etex, z.p3);
label.bot(btex $\tilde p^4$ etex, z.p4);

label.top(btex $\tilde q^1$ etex, z.q1);
label.top(btex $\tilde q^2$ etex, z.q2);
label.top(btex $\tilde q^3$ etex, z.q3);
label.top(btex $\tilde q^4$ etex, z.q4);
endfig;

beginfig(1200) 
save u,p;
path p[];
u:=1cm;

z.v=(-1,0)*u;
z.vv=z.v xscaled -1;
z.r=(0,.5)*u;
z.rr=z.v+ (z.r-z.v) rotated 10;

z1=.6[z.r,-z.r];
z0=z.v-abs(z.r-z.v)*unitvector(z1-z.v);
z2=z.vv-abs(z.r-z.v)*unitvector(z1-z.vv);

p0=z0..z1{(z2-z1) rotated -50}..z2;
p1=arc(z.r,z.rr,-z.r);

hatchfill p1--cycle withcolor (77, 1.5mm, -.5bp);

draw subpath (0,1) of p0 pensemibold;
draw subpath (1,2) of p0 pensemibold dashed evenly;
draw p1;
draw p1 xscaled -1;
draw z.r-- -z.r;
draw z.v..z.r..z.vv;
draw z.v..-z.r..z.vv;

dOt z.v,z.vv;

whitelabel.lft(btex $v$ etex, z.v);
label.rt(btex $v'$ etex, z.vv);
whitelabel.urt(btex $\gamma_v$ etex, point .5 of p0);
whitelabel.urt(btex $\Star_v$ etex, z.r rotatedabout(z.v,-160));
label.llft(btex $\Star_{v'}$ etex, -z.r rotatedabout(z.vv,-160));
endfig;

beginfig(1205) 
save u,p;
path p[];
u:=1cm;

z.p=origin;
z.v=(1,0)*u;
z.vv=2.2*z.v;
z.u=(.6,1.1)*u;
z.w=.4[z.v,z.u];

labelarcsprof(z.u,z.p,z.v, 17, 2, btex $\alpha$ etex);

draw z.vv--z.p--z.u--z.v;

dOt z.vv,z.p,z.u,z.v,z.w;

label.bot(btex $\tilde p$ etex, z.p);
label.top(btex $\tilde u$ etex, z.u);
label.bot(btex $\tilde v$ etex, z.v);
label.bot(btex $\tilde q$ etex, z.vv);
label.urt(btex $\tilde w$ etex, z.w);
endfig;

beginfig(1210) 
save u,p;
path p[];
u:=1cm;

z.p=(0,0)*u;
z.q=(2.5,0)*u;
z.u=(1,0)*u;
z.g=z.u rotated 70;

draw z.p--z.q dashed evenly;
drawarrow z.p--z.u pensemibold;
drawarrow z.p--z.g pensemibold;


dOt z.p,z.q;
label.bot(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);
label.bot(btex $\ell$ etex, .5[z.p,z.q]);
label.top(btex $\dir pq$ etex, z.u);
label.ulft(btex $\nabla_p f$ etex, z.g);
endfig;

beginfig(1215) 
save u,p,n;
path p[];
u:=.5cm;
n:=3;



drawarrow (-n,0)*u--(n,0)*u;
drawarrow (0,-n)*u--(0,n)*u;

drawarrow (2,2)*u--(1,1)*u pensemibold;
drawarrow (-2,2)*u--(-1,1)*u pensemibold;
drawarrow (2,-2)*u--(1,-1)*u pensemibold;
drawarrow (-2,-2)*u--(-1,-1)*u pensemibold;

drawarrow (2,0)*u--(1,0)*u pensemibold;
drawarrow (-2,0)*u--(-1,0)*u pensemibold;
drawarrow (0,-2)*u--(0,-1)*u pensemibold;
drawarrow (0,2)*u--(0,1)*u pensemibold;

dOt (2,2)*u,(-2,2)*u,(2,-2)*u,(-2,-2)*u,(2,0)*u,(-2,0)*u,(0,-2)*u,(0,2)*u;
Dot (0,0)*u;

endfig;

beginfig(1310)
save u,p,d;
path p[];
u:=2cm;
d:=.3*u;

z.q=origin;
z.u=(1,-.2)*u;
z.v=z.q+(d/3)*unitvector(z.u-z.q);
z.b=(.6,.8)*u;
z.w=z.v+(2*d/3)*unitvector(z.b-z.v);

draw z.q--z.u;
draw z.v--z.b;

dOt z.q,z.u,z.v,z.b,z.w;

label.rt(btex $u^i$ etex, z.u);
label.lft(btex $q$ etex, z.q);
label.bot(btex $v^i$ etex, z.v);
label.rt(btex $w^i$ etex, z.w);
label.top(btex $b$ etex, z.b);
endfig;

beginfig(1405) 
save u,p;
path p[];
u:=.7cm;

z.pp=origin;
z.p=(4,0)*u;
z.RR=(0,-1.4)*u;
z.R=(0,-1.2)*u;
z.x=(.2,1)*u;
z.xx=.15[z.pp,z.p+z.x];

draw circle(z.p,z.R) dashed evenly;
draw circle(z.pp,z.RR) dashed evenly;
draw z.pp--z.p+z.x;

dOt z.pp,z.p,z.p+z.x,z.xx;

label.bot(btex $p$ etex, z.p);
label.bot(btex $\bar p$ etex, z.pp);
label.bot(btex $x^i$ etex, z.p+z.x);
label.bot(btex $\bar x^i$ etex, z.xx);
endfig;

beginfig(1410) 
save u,p;
path p[];
u:=1cm;

z.x=(0,0)*u;
z.p=(1,0)*u;
z.q=(2,0)*u;
z.y=(3,0)*u;
z.z=(2,1)*u;

draw z.x--z.y;
draw z.q--z.z;

dOt z.x,z.y,z.z,z.p,z.q;

label.bot(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
label.top(btex $z$ etex, z.z);
label.bot(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);

endfig;

beginfig(1415) 
save u,p;
path p[];
u:=1cm;

z.x=(0,0)*u;
z.p=(1,0)*u;
z.q=(2,0)*u;
z.y=(3,0)*u;
z.z=(2,1)*u;

draw z.x--z.y;
draw z.q--z.z;

dOt z.x,z.y,z.z,z.p,z.q;

label.bot(btex $p$ etex, z.x);
label.bot(btex $y$ etex, z.y);
label.top(btex $z$ etex, z.z);
label.bot(btex $w$ etex, z.p);
label.bot(btex $q$ etex, z.q);

endfig;

beginfig(1505) 
save u,p;
path p[];
u:=1cm;

z.p=(0,0)*u;
z.pp=(-.1,-.2)*u;
z.r=(0,2)*u;
z.s=(2,1)*u;
z.shift=(4,0)*u;


draw z.p--z.r--z.s--cycle;

p0=z.p{-.7,1}..z.r;
p1=z.p{1,0}..z.s;
draw p0;
draw p1;

draw (z.pp--z.r--z.s--cycle) shifted z.shift;

labelarcsprof(z.r+z.shift,z.pp+z.shift,z.s+z.shift, 17, 3, btex $\phi$ etex);

dOt z.p,z.r,z.s,z.pp+z.shift,z.r+z.shift,z.s+z.shift;

label(btex $\spc{L}$ etex, (x.s/2,-13));
label(btex $\Lob2\kappa$ etex,  (x.s/2,-13)+z.shift);
label.ulft(btex $S$ etex, .5[z.p,z.s]);
label.ulft(btex $s$ etex, .5[z.pp,z.s]+z.shift);
label.rt(btex $R$ etex, .5[z.p,z.r]);
label.rt(btex $r$ etex, .5[z.pp,z.r]+z.shift);
label.urt(btex $\ell$ etex, .5[z.r,z.s]);
label.urt(btex $\ell$ etex, .5[z.r,z.s]+z.shift);
label.lft(btex $\rho$ etex, point .5 of p0);
label.lrt(btex $\sigma$ etex, point .5 of p1);
label.top(btex $\rho(r)$ etex, z.r);
label.rt(btex $\sigma(s)$ etex, z.s);
endfig;

beginfig(1510) 
save u,p,s;
path p[];
u:=1cm;
s:=5*u;

z0=(.5*s,.2*s);
z2=(.7*s,.9*s);
z1=whatever*z2;
x1=x0;



hatchfill z0--(x0,s)--(s,s)--(s,y0)--cycle withcolor (20, 1mm, -.2bp);
draw (0,y0)--(s,y0) dashed evenly;
draw (x0,0)--(x0,s) dashed evenly;
draw (0,0)--z1 dashed evenly;
drawdblarrow (s,0)--(0,0)--(0,s) pensemibold;
drawarrow z0--z1 penbold;
drawarrow z1--z2 penbold;

dOt z0,z1,z2,(x0,0),(0,y0);

label.rt(btex $r$ etex, (s,0));
label.top(btex $s$ etex, (0,s));
label.bot(btex $r_{\min}$ etex, (x0,0));
label.lft(btex $s_{\min}$ etex, (0,y0));
whitelabel.rt(btex $(r_0,s_0)$ etex, z2);
endfig;
end
