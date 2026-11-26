% Unidad 3 Eejercicio 03 Z. Funcion de transferencia
% F(z) = z+1 / z^2+z+1
clear;
clc;
% Declarar un vector que contenga los coeficientes del numerador de la FT
% Ordenados de izquierda a derecha en orden descendente de z
numZ = [0 1 1];
% Declarar un vector que contenga los coeficientes del denominador de la FT
% Ordenados de izquierda a derecha en orden descendente de z
denZ = [1 1 1];
% Se utiliza la sentencia tf para crear una funcion de transferencia a
% partir de los coeficiente del numerador y denominador.
Ts = 2;
FZ=tf(numZ,denZ,Ts)
