% Tao: constante de tiempo
% Tao = RC
% 1Tao = 63%, 5Tao = 99.9%
% H(s) = 1 / s+1
clear all;
close all;
clc;
a=arduino('COM4','Uno');
Ts=0.025;
t=0:Ts:5;
writeDigitalPin(a,'D2',0);
pause(2)
writeDigitalPin(a,'D2',1);

for i=1:201
   voltaje(i)=readVoltage(a,'A0');
   pause(0.005)
end
plot(voltaje);
grid on;
grid minor;
xlabel('t')
ylabel('y(t)')
writeDigitalPin(a,'D2',0);
pause(3);