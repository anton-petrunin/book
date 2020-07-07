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

end
