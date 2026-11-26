clear;
close
clc;
a=arduino('COM4','Uno');

for i=1:10
    writeDigitalPin(a,'D7',0);
    pause(0.5)
    writeDigitalPin(a,'D7',1);
    pause(0.5)
end

writeDigitalPin(a,'D7',0);