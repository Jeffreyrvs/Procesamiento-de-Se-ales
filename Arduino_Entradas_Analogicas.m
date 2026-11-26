clear;
close;
clc;
a=arduino('COM4','Uno');
writeDigitalPin(a,'D2',0);
pause(1)
writeDigitalPin(a,'D2',1);
for i=1:201
    voltaje(i)=readVoltage(a,'A0');
end
writeDigitalPin(a,'D2',0);
plot(voltaje);
grid on;
grid minor;
xlabel('t');
ylabel('y(t)');