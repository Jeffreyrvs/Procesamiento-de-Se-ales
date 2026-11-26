% Gernerar 10 intensidades de brillo
clear;
close;
clc;
a=arduino('COM4','Uno');
brillo=1/10;
writePWMDutyCycle(a,'D5',0)
pause(1);
for i=1:10
    writePWMDutyCycle(a,'D5',i*brillo);
    pause(1)
end