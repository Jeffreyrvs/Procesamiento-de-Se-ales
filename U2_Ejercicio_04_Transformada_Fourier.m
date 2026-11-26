% Transformada de Fourier
% Realizar la sumatoria de varias señales senoidales
% con diferente frecuencia y magnitud
% Obtener la transformada rapida de Fourier
clear;
clc;
% tiempo de la señal
t0=0;                 % Valor inicial del tiempo
tf=1;                  % Valor final del intervalo de tiempo
Fs=10000;        % Frecuencia de muestreo
Ts=1/Fs;           % Periodo de muestreo
t=t0:Ts:tf;          % Intervalo de tiempo
[ren,col]=size(t);      % Tamaño del arreglo de la variable tiempo
n=col;               % n es el numero de muestras en el vector t
% Generar señal senoidal
A=5;           % Amplitud de la señal
F=100;       % Frecuencia de la señal
w=2*pi*F;   % Frecuencia angular
S=A*sin(w*t);
% Transformada Rapida de Fourier (FFT)
T=fft(S);
y=abs(T/n);
y1=2*y(1:(((n-1))/2)+1);
n1=0:(n-1)/2;
% Mostrar resultados
subplot(1,2,1);
plot(t,S);
subplot(1,2,2);
plot(n1,y1);