% Señales de Fourier
% Señal cuadrada
clear;
clc;
% Intervalo de tiempo
Ts=0.01;
t=0:Ts:2;
n=2/Ts;
% Pulsos cuadrados
x = [ones(1,(n/4)+1), zeros(1,(n/4)), ones(1,(n/4)), zeros(1,(n/4))];
%Serie de Fourier
f=1;
w=2*pi*f;
F1=0.5+(2/(1*pi))*sin(1*w*t);
F3=F1+(2/(3*pi))*sin(3*w*t);
F5=F3+(2/(5*pi))*sin(5*w*t);
F7=F5+(2/(7*pi))*sin(7*w*t);
F9=F7+(2/(9*pi))*sin(9*w*t);
F11=F9+(2/(11*pi))*sin(11*w*t);
% Mostrar resultados
subplot(1,3,1);
plot(t,x,t,F1);
axis([-0.1 2.1 -0.2 1.2]);
subplot(1,3,2);
plot(t,x,t,F1);
plot(t,x,t,F1,t,F3,t,F5,t,F7,t,F9,t,F11);
axis([-0.1 2.1 -0.2 1.2]);
subplot(1,3,3);
plot(t,x,t,F11);
axis([-0.1 2.1 -0.2 1.2]);
