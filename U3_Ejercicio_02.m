% U3_Ejercicio_02
% Obtener Transformada  Z inversa con los coeficientes de los polinomios y con expresión simbólica

% Limpiar
clear;
clc;

% PRIMER METODO: Con coeficientes de polinomios se debe tener expresada la función en Z en exponentes positivos y ordenados de grado menor a mayor

% Declarar hasta que k se va a calcular
k=20;

% Declarar la señal impulso unitario
h=[1 zeros(1, k)];

% F1Z=z/(z-1)
num1Z=[1 0];        % Numerador
den1Z=[1 -1];        % Denominador

% Filtro digital unidimensional para implementar ecuaciones de diferencias para F1Z
x1k=filter(num1Z, den1Z, h)

% F2Z=(10z+5)/((z-1)(z-0.2))
num2Z=[0 10 5];            % Numerador
den2Z=[1 -1.2 0.2];        % Denominador

% Filtro digital unidimensional para implementar ecuaciones de diferencias para F2Z
x2k=filter(num2Z, den2Z, h)

% F3Z=(2z+1)/(z^2+3z-4)
num3Z=[0 2 1];        % Numerador
den3Z=[1 3 -4];        % Denominador

% Filtro digital unidimensional para implementar ecuaciones de diferencias para F3Z
x3k=filter(num3Z, den3Z, h)

% Graficar
n=0:k;

subplot(1, 3, 1)
stem(n, x1k, 'filled')

subplot(1, 3, 2)
stem(n, x2k, 'filled')

subplot(1, 3, 3)
stem(n, x3k, 'filled')

% SEGUNDO METODO: Con expresion simbólica se deben declarar las variables simbolicas

% Variables de cálculo simbólico
syms z;

% Para obtener la Transformada Z inversa se usa "iztrans" y el resultado esta dado en términos de n muestras

F1Z=z/(z-1);
x1t=iztrans(F1Z)

F2Z=(10*z+5)/(z^2-1.2*z+0.2);
x2t=iztrans(F2Z)

F3Z=(2*z+1)/(z^2+3*z-4);
x3t=iztrans(F3Z)

F4Z=(z)/(z-1)^2;
x4t=iztrans(F4Z)