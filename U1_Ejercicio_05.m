% Señal rampa
% Tiempo continuo
clear;
clc;
% Datos de señal
alfa = -3;       % Desplazamiento en el tiempo
t1=-1:0.001:-0.001;
t2=0:0.001:1;
t=[t1 t2]-alfa;
aux1=size(t1,2);
ft1=zeros(1, aux1);
aux2=size(t2, 2);
ft2=t2;
A=1;                 % Escalamiento en amplitud
k=4;                       % Desplazamiento en amplitud
% Generar señal
ft=[ft1 ft2];               % Rampa Unitaria
fdet=A*ft+k;            % Rampa Unitaria con operacion de escalamiento
% Mostrar resultados
plot(t,fdet)
title("Señal Rampa")
xlabel('t(tiempo)')
ylabel('f(t)=A*r(t)+k')
axis([(-1.1-alfa) (1.1-alfa) (-0.1+k) (A+0.1+k)])