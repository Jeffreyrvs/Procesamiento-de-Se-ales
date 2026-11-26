% Ejercicio 04 Transformada Z. Polos y Ceros de una funcion de
% transferencia
clear;
clc;
close all;
syms z;
% Funcion de transferencia Ejemplo
numZ = [0 2 1];
denZ = [1 3 -4];
Ts=1;
FZ=tf(numZ,denZ,Ts);
% Ceros de la FT discreta
c=complex(roots(numZ))
c_FZ=zero(FZ)
% Polos de la FT discreta
p=complex(roots(denZ))
p_FZ=pole(FZ)
% Grafica de Polos y Ceros
subplot(1,2,1);
plot(c,'bo')
hold on
plot(p,'rx')
grid on 
grid minor 
legend('Ceros','Polos');
title('Grafica de polo y ceros');
xlabel('Reales')
ylabel('Imaginarios');
hold off
subplot(1,2,2);
pzmap(FZ)
