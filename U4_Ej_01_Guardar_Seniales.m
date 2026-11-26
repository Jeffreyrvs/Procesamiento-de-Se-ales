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
% Generar señal senoidal 1
A1=5;
F1=10;
w1=2*pi*F1;
S1=A1*sin(w1*t);
% Generar señal senoidal 2
A2=0.45;
F2=100;
w2=2*pi*F2;
S2=A2*sin(w2*t);
% Generar señal senoidal 3
A3=1;
F3=1050;
w3=2*pi*F3;
S3=A3*sin(w3*t);
% Generar señal de ruido
ruido=3*rand(1,n);
% Señal a guardar
S=S1+S3;%+S2+S3%+ruido;
% Guardar señal
writematrix([S], "Señal_02","Delimiter", "\t")
% Mostrar resultados
plot(t,S);