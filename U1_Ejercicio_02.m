% U1. E2
% Calcular y graficar una señal senoidal en tiempo continuo de la forma f(t)=sin(w*t)
clear;
clc;
% definir un intervalo de tiempo
t=0:0.01:1
% datos de la señal
f=1;
w=2*pi*f;       % Frecuencia angular (rad/s)
A=1;              % Escalamenito en Amplitud (pico)
k=0;               % Desplazamiento en amplitud
%Generar señal
ft=A*sin(w*t)+k;
%Mostrar resultados
plot(t,ft);
title("Señal senoidal de frecuencia "+f+"Hz")
xlabel('tiempo')
ylabel('f(t) =A*sin(w*t)')