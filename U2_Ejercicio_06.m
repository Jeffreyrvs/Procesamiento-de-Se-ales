% Respuesta al escalon y al impulso 
% Funcion de transferencia de un sistema continuo comparandolo  con el
% mismo sistema pero en tiempo discreto
clear;
clc;
close all;
% FT Sistema de 1er orden en tiempo continuo
numS=[0 0.0625];
denS=[1 0.007272];
FdeS=tf(numS,denS);
% Obtener la funcion de transferencia den tiempo discreto correspondiente
% al sistema en tiempo continuo, es decir, se debe convertir la FT de S a
% Z. Se necesita la FT en S, el tiempo de muestreo y el tipo de retenedor
Ts=10;
FdeZ=c2d(FdeS,Ts,'zoh');
% Para mostrar se trata del mismo sistema, graficar polo y ceros, la
% respuesta al escalon y la respuesta al impulso, tanto de la funcion en S
% como en Z.

% Resultados en tiempo continuo
subplot(2,3,1);
pzmap(FdeS);        % Graficar polos y ceros en S
subplot(2,3,2);
step(FdeS);         % Graficar la resupuesta al escalon en tiempo continuo
subplot(2,3,3);
impulse(FdeS);      % Graficar la respuesta al impulso en tiempo continuo

% Resultados en tiempo discretos
subplot(2,3,4);
pzmap(FdeZ);        % Graficar polos y ceros en Z
subplot(2,3,5);
step(FdeZ);         % Graficar la respuesta al escalon en tiempo discreto
subplot(2,3,6);
impulse(FdeZ);      % Graficar la respuesta al impulso en tiempo discreto