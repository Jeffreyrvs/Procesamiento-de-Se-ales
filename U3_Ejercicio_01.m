% Unidad 3 Ejercicio 01 Transformada Z
% Obtener la Transformada Z a partir de una expresion
clear;
clc;
% Primera forma
% Declara las variables que se utilizaran para calculo simbolico
syms kT w;
% El comando para la transformada Z es "ztrans"
% El resultado estad dado en potencias positivas de Z
% Ejemplo 1. f1(t)=t
f1t=kT;
F1Z=ztrans(f1t)
% Ejemplo 2. f2(t)=t^3
f2t=kT^3;
F2Z=ztrans(f2t)
% Ejemplo 3. f3(t)=sin(wt)
f3t=sin(w*kT);
F3Z=ztrans(f3t)
