% U1. E1
% Generar señal cuadrada y mostrarla en tiempo continuo
clear;
clc;
% definir un intervalo de tiempo
t=-1.5:0.01:2;
% datos de la señal
f=1;
w=2*pi*f;       % Frecuencia angular (rad/s)
A=1;              % Escalamenito en Amplitud (pico)
k=0;               % Desplazamiento en amplitud
D=70;            % Ciclo de trabajo (Duty cycle)
% Generar Señal
ft=A*square(w*t,D)+k;
% mostrar resultados
plot(t,ft)
title("Señal cuadrada con frecuencia de "+f+"Hz")
axis([-1.6 2.1 (-A-0.1+k) (A+0.1+k)])