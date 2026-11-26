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
F=0.5+(2/(1*pi))*sin(1*w*t);
F1=F;
for i=3:2:100
    F=F+(2/(i*pi))*sin(i*w*t);
end
% Mostrar resultados
plot(t,x);
axis([-0.1 2.1 -0.2 1.2]);
hold on;
plot(t,F1);
axis([-0.1 2.1 -0.2 1.2]);
hold on;
plot(t,F);
axis([-0.1 2.1 -0.2 1.2]);