clear all;
close all;
clc;
a=arduino('COM4','Uno');
%writeDigitalPin(a,'D2',0);
pause(2)
%writeDigitalPin(a,'D2',1);
tic;
for i=1:401
    senial(i)=readVoltage(a,'A0');
    t(i)=toc;
    pause(0.01);
end
writematrix([senial], "Señal_03_Proyecto","Delimiter", "\t")
plot(t,senial);
grid on ;
grid minor;
xlabel('t');
ylabel('y(t)')
%axis([0 t(200) 0 0.5])
%writeDigitalPin(a,'D2',0);
pause(1);