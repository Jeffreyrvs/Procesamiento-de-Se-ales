clear;
close;
clc;
signal=load('ECG.txt');
%fs=10000;
fc=10;
n=5; % Orden del filtro
%Wn=fc/fs; % Frecuencia angular normalizada
Wn=meanfreq(signal);
filtro='Low';
b=fir1(n,Wn,filtro);
s_filtrada=filter(b,1,signal);
% Mostrar resultados
plot(signal)
hold on;
plot(s_filtrada);
legend('Input', 'output')
