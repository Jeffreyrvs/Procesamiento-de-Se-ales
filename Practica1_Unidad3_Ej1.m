% Obtener la Transformada Z a partir de una expresion
clear;
clc;
% Primera forma
% Declara las variables que se utilizaran para calculo simbolico
syms kT w;
% El comando para la transformada Z es "ztrans"
% El resultado estad dado en potencias positivas de Z
% Ejemplo 1. f1(t)=e^(-2t)
f1t=exp(-2*kT);
F1Z=ztrans(f1t)
% Ejemplo 2. f2(t)=cos(3t)
f2t=cos(3*kT);
F2Z=ztrans(f2t)
      

