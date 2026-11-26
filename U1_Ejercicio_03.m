% Generar una señal triangular y/o diente de sierra
% Mostrarla en tiempo continuo
clear;
clc;
% Datos de la señal
t=0:0.01:1;
f=4;             % Frecuencia de la señal
w=2*pi*f;    % Frecuencia angular 
A=1;           % Escalamiento en Amplitud
k=1;            % Desplazamiento en Amplitud
pos=1;        % Posicion del vertice del triangulo
% Generar señal
ft=A*sawtooth(w*t,pos)+k;
% Mostrar resultados
plot(t,ft)
title("Señal triangular. f= "+f+" Hz")
xlabel('t(tiempo)')
ylabel('f(t)=A*f(t)+k')
axis([-0.1 1.1 (-A-0.1+k) (A+0.1+k)])
