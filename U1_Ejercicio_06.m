% Ejercicio 06
% Calcular y graficar la funcion f(t)=sin(wt)
% w=2*pi*f          f(t) = A*sin(f*w*t)+k
% Mostrarla en tiempo continuo
clear;
clc;
t=0:0.001:2;
w=2*pi;         % Frecuencia en segundos
f=1;               % Frecuencia en Hz
ft=sin(f*w*t);  % Calcular el seno
k=0;
% Desplazamiento en amplitud
a=-.5;      % Desplazamiento en el tiempo
t1=t-a; 
% Escalamiento en aplitud
A=1.5;      % Amplitud de la señal sinoidal (pico)
f2=A*sin(f*w*t);
% Desplazamiento en el tiempo
f1= sin(f*w*t) +k;
% Escalamiento en el tiempo
c=.5;       % Es el factor de escalamiento en el tiempo
t2=c*t;
% Mostrar resultados
subplot(2,3,1);
plot(t,ft);
title("Señal sinoidal (1Hz)");
xlabel('t');
ylabel('f(t)=sin(wt)');
axis([-0.1 2.1 -1.1 1.1]);

subplot(2,3,2);
plot(t,f1);
title("Señal sinoidal (1Hz)");
subtitle('Desplazamiento en amplitud');
xlabel('t');
ylabel('f(t)=sin(wt) + k')
axis([-0.1 2.1 (-1.1+k) (1.1+k)]);

subplot(2,3,3);
plot(t1,ft)
title("Señal sinoidal (1Hz)");
subtitle("Desplazamiento en el tiempo"),
xlabel('t');
ylabel('f(t)=sin(wt + a)');
axis([(-0.1-a) (2.1-a) -1.1 1.1]);

subplot(2,3,5);
plot(t,f2);
title("Señal sinoidal (1Hz)");
subtitle("Escalamiento en amplitud");
xlabel('t');
ylabel('f(t)=A*sin(wt)');
axis([-0.1 2.1 (-1.1*A) (1.1*A)]);

subplot(2,3,6);
plot(t2,ft);
title("Señal sinoidal (1Hz)");
subtitle("Escalamiento en el tiempo");
xlabel('t');
ylabel('f(t)=sin(c*wt)');
axis([-0.1 2.1 -1.1 1.1]);

subplot(2,3,4);
plot(t,ft,'b',t1,ft,'r');
title("Señal sinoidal (1Hz)");
subtitle('y senoidal con despl. en Amp');
xlabel('t');
ylabel('f(t)');