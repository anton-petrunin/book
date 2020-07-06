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

end
