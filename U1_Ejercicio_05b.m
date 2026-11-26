% Señal rampa
% Tiempo continuo
clear;
clc;
% Datos de señal
t1=-1:0.001:-0.001;
t2=0:0.001:1;
t=[t1 t2];
aux1=size(t1,2);
ft1=zeros(1, aux1);
aux2=size(t2, 2);
ft2=t2;
A=2;                 % Escalamiento en amplitud
k=2;                  % Desplazamiento en amplitud
alfa=2;              % Desplazamiento en el tiempo
beta=2;             % Escalamiento en el tiempo

% Rampa Unitaria
f1=[ft1 ft2];             

% Señal con escalamiento en amplitud
f2=A*f1;

% Señal con desplazamiento en amplitud
f3=f1+k;

% Señal con desplazamiento en el tiempo
td=t-alfa;

% Señal con escalamiento en el tiempo
te=beta*t;

% Mostrar resultados

% Señal rampa unitaria
subplot(2,3,1) 
plot(t,f1)
title("Señal Rampa Unitaria")
xlabel('t(tiempo)')
ylabel('f(t)=r(t)')
axis([(-1.1) (1.1) (-0.1) (1.1)])
% Señal rampa escalamiento en amplitud
subplot(2,3,2) 
plot(t,f2)
title("r(t) + Escalamiento Ampl.")
xlabel('t(tiempo)')
ylabel('f(t)=A*r(t)')
axis([(-1.1) (1.1) (-0.1) (A+0.1)])
% Señal rampa desplazamiento en amplitud
subplot(2,3,3) 
plot(t,f3)
title("r(t) + Desplazamiento Ampl..")
xlabel('t(tiempo)')
ylabel('f(t)=r(t)+k')
axis([(-1.1) (1.1) (-0.1+k) (1.1+k)])
% Señal rampa desplazamiento en el tiempo
subplot(2,3,5) 
plot(td,f1)
title("r(t+alfa)")
xlabel('t(tiempo)')
ylabel('f(t)=r(t)+k')
axis([(-1.1-alfa) (1.1-alfa) (-0.1) (1.1)])
% Señal rampa Escalamiento en el tiempo
subplot(2,3,6) 
plot(te,f1)
title("r(t) + escalamiento en t")
xlabel('t(tiempo)')
ylabel('f(t)=r(beta*t)')
axis([(-1.1*beta) (1.1*beta) (-0.1) (1.1)])
% r(t) + algo
subplot(2,3,4) 
plot(t,f1,td,f1)
title("r(t) +  algo en t")
xlabel('t(tiempo)')
ylabel('f(t)=r(t)')
%axis([(-1.1) (1.1) (-0.1+k) (1.1+k)])
%axis([(-1.1-alfa) (2.1-alfa) (-0.1+k) (1.1+k)])