% Transformada de Fourier y Transformada Inversa de forma simbolica
clear;
close;
clc;
% Declarar t como un simbolo
syms t;
% Declarar la funcion en el tiempo
% t0=3;
xdet=cos(2*t);
%xdet=dirac(t-t0)
% Aplicar TF simbolica
xdef=fourier(xdet)

% TF Inversa simbolica
xt=ifourier(xdef)