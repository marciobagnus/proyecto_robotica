clc;
clear all;
close all;

% Agregar la carpeta scripts al path
addpath('scripts');

% Obtener tamaño de pantalla
screenSize = get(0, 'ScreenSize');
screenWidth = screenSize(3);
screenHeight = screenSize(4);

% Definir tamaño inicial de la figura (ajusta estos valores según tus necesidades)
initialWidth = screenWidth * 0.8;  % 80% del ancho de la pantalla
initialHeight = screenHeight * 0.8; % 80% del alto de la pantalla

% Calcular posición para centrar la figura inicialmente
posX = (screenWidth - initialWidth) / 2;
posY = (screenHeight - initialHeight) / 2;

% Crear la figura principal con tamaño inicial
fig = figure('Name', 'Menú de Opciones', 'Position', [posX, posY, initialWidth, initialHeight]);

% Definir las opciones disponibles
opciones = {'Cuadrado', 'Cuadrado Rotado', 'Triángulo', 'Círculo', 'Circulo Rotado', 'Logo UTN', 'Salir'};

% Altura de cada botón y espaciado entre ellos
btn_height = 40;
btn_width = 200;  % Ancho deseado para los botones
spacing = 10;

% Crear botones para cada opción
for i = 1:length(opciones)
    btn_position = [50, initialHeight - 50 - (btn_height + spacing) * i, btn_width, btn_height];
    uicontrol('Style', 'pushbutton', ...
              'String', opciones{i}, ...
              'Position', btn_position, ...
              'Callback', {@opcionSeleccionada, i, fig});
end
