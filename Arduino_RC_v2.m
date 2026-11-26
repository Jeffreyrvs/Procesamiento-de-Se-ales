clear all;
close all;
clc;
a=arduino('COM4','Uno');
u=5*ones(1,201);
writeDigitalPin(a,'D2',0);
pause(2)
writeDigitalPin(a,'D2',1);
tic;
for i=2:201
    voltaje(i)=readVoltage(a,'A0');
    t(i)=toc;
    pause(0.01);
end
voltaje(1)=0;
t(1)=0.0;
plot(t,voltaje,t,u);
grid on ;
grid minor;
xlabel('t');
ylabel('y(t)')
axis([0 10 0 5.2])
writeDigitalPin(a,'D2',0);
pause(1);