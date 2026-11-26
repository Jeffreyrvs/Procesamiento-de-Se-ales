clear;
close;
clc;
signal=load('ECG.txt');
n=25; % orden del filtro
f=[0 0.65 0.65 1]; % Frecuencias del filtro en el eje x
m=[1 1 0 0]; % Magnitud de la ventana del filtro eje y
% filtro
b=fir2(n,f,m);
% Pasar la señal por el filtro 
s_filtrada=filter(b,1,signal);
plot(signal)
hold on;
plot(s_filtrada)
legend('Input','Output')
% Graficar ventana y filtro
[h,w]=freqz(b,1);
figure()
plot(f,m,w/pi,abs(h))
xlabel('\omega/\pi')
legend('ideal','FIR2')