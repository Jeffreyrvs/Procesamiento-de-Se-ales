% Limpiar
clear;
clc;

% PRIMER METODO: Con coeficientes de polinomios se debe tener expresada la función en Z en exponentes positivos y ordenados de grado menor a mayor

% Declarar hasta que k se va a calcular
k=25;

% Declarar la señal impulso unitario
h=[1 zeros(1, k)];

% F1Z=z/(z-0.5)
num1Z=[1 0];        % Numerador
den1Z=[1 -0.5];        % Denominador

% Filtro digital unidimensional para implementar ecuaciones de diferencias para F1Z
x1k=filter(num1Z, den1Z, h)

% F2Z=(0.4673z-0.3393)/(z^2-1.5327z+0.6607)
num2Z=[0 0.4673 -0.3393];            % Numerador
den2Z=[1 -1.5327 0.6607];        % Denominador

% Filtro digital unidimensional para implementar ecuaciones de diferencias para F2Z
x2k=filter(num2Z, den2Z, h)

% Graficar
n=0:k;

subplot(1, 2, 1)
stem(n, x1k, 'filled')

subplot(1, 2, 2)
stem(n, x2k, 'filled')
