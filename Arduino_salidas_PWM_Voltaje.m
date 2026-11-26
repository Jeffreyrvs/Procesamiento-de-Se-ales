% Gernerar intensidades de brillo con voltaje
clear;
close;
clc;
a=arduino('COM4','Uno');
brillo=5/20;
writePWMVoltage(a,'D6',0)
pause(1);
for i=1:20
    writePWMVoltage(a,'D6',i*brillo);
    pause(1)
end
writePWMVoltage(a,'D6',0);