% Respuesta al escalon y al impulso
% Funcion de trasnferencia 
% Sistemas de primer orden
clear;
clc;
numZ=[0 2 1];
denZ=[1 3 -4];
Ts=0.01;
FdeZ=tf(numZ,denZ,Ts);
subplot(1,3,1);
pzmap(FdeZ);
subplot(1,3,2);
step(FdeZ);
subplot(1,3,3);
impulse(FdeZ);