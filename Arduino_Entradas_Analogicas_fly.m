clear;
close;
clc;
a=arduino('COM4','Uno');
writeDigitalPin(a,'D2',0);
pause(1)
writeDigitalPin(a,'D2',1);
for i=1:201
    n(i)=i-1;
    voltaje(i)=readVoltage(a,'A0');
    plot(n(:), voltaje(:))
    ylim([-0.1 5.1])
    pause(0.05)
end
writeDigitalPin(a,'D2',0);
pause(1);