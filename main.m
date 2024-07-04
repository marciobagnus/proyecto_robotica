clc;
clear all;
close all;

% Agregar la carpeta scripts al path
addpath('scripts');

% Bucle para permitir al usuario seguir ingresando opciones
while true
  clc;
  clear all;
  close all;

  % Mostrar el mensaje de opciones con descripciones
  fprintf('Ingrese la opcion deseada (1-7) segun corresponda:\n');
  fprintf('1- Cuadrado\n');
  fprintf('2- Cuadrado Rotado\n');
  fprintf('3- Triángulo\n');
  fprintf('4- Círculo\n');
  fprintf('5- Círculo Rotado\n');
  fprintf('6- Logo UTN\n');
  fprintf('7- Salir\n');

  % Solicitar al usuario que ingrese una opción
  opcion = input('Opcion: ', 's');

  if strcmpi(opcion, '7')
  disp('Programa terminado.');
  break;
  end

  % Convertir la opción a número si es posible
  opcionNum = str2double(opcion);

  % Llamar a la función opcionSeleccionada con la opción ingresada
  opcionSeleccionada([], [], opcionNum, []);

  % Esperar a que se cierre la figura antes de continuar
  waitfor(gcf);
end

