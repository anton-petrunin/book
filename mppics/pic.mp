input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../biber}
\usepackage{../akp1}
\usepackage{../hyper}
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
label(btex $a=\side\kappa\{\phi,b,c\}$ etex rotated angle(z.B-z.C), .5[z.B,z.C]+8*unitvector(z.B-z.C) zscaled (0,1));
label.ulft(btex $b$ etex, .5[z.A,z.C]);
label.bot(btex $c$ etex, .5[z.A,z.B]);
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


end
