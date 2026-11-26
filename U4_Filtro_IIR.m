clear;
close;
clear;
clc;
signal=load('ECG.txt');
%fs=10000;
fc=200;
n=1; % Orden del filtro
%Wn=fc/fs; % Frecuencia angular normalizada
Wn=meanfreq(signal);
[b,a]=butter(n,Wn,'high');
freqz(b,a);
s_filtrada=filter(b,a,signal);
% Mostrar resultados
subplot(1,2,1);
plot(signal)
subplot(1,2,2);
plot(s_filtrada);