% Practica 1 Unidad 3
clear all;
close all;
clc;
a=arduino('COM4','Uno');
u=5*ones(1,201);
writeDigitalPin(a,'D2',0);
pause(2)
writeDigitalPin(a,'D2',1);
tic;
for i=2:201;
    voltaje(i)=readVoltage(a,'A0');
    t(i)=toc;
    m(i)=i;
    if t > 5.8;
        break;
    end;
    pause(0.01);
end
t(1)=0.0;
voltaje(1)=0;
m(1)=0;
subplot(2,1,1);
plot(t,u,t,voltaje);
grid on ;
grid minor;
xlabel('t');
ylabel('y(t)')
axis([0 5.8 0 5.2])
subplot(2,1,2);
stem(m,u);
hold on;
stem(m,voltaje);
hold off;
grid on ;
grid minor;
xlabel('n');
ylabel('y(n)')
axis([0 202 0 5.2])
writeDigitalPin(a,'D2',0);
pause(1);