clear all;
close all;
clc;
a=arduino('COM4','Uno');
writeDigitalPin(a,'D2',0);
pause(2)
writeDigitalPin(a,'D2',1);
tic;
for i=2:402
    voltaje(i)=readVoltage(a,'A0');
    t(i)=toc;
    if t(i) >= 5
        writeDigitalPin(a,'D2',0);
        u(i)=0;
    else 
        u(i)=5;
    end
    pause(0.01);
end
voltaje(1)=0;
t(1)=0.0;
u(1)=5;
plot(t,voltaje,t,u);
grid on ;
grid minor;
xlabel('t');
ylabel('y(t)')
axis([0 11 0 5.2])
writeDigitalPin(a,'D2',0);
pause(1);