% Script utilizado para analizar paso a paso los 8 conjuntos
% de trayectorias por los que va pasando el robot para dibujar el logo

clc; clear all; close all;
% Coordenadas de los puntos
x1 = [6 5.8 5 3.5 2 1.2 1];
y1 = [6 5   4 3.5 4 5   6];

x2 = [1.2 2 3.5];
y2 = [5 4 3.5];

x3 = [5 5.8 6];
y3 = [3 2 1];

x4 = [5.8 5 3.5 2 1.2 1];
y4 = [2 3 3.5 3 2 1];

x5 = [1.2 2 3.5];
y5 = [2 3 3.5];

x6 = [2 1 2 3.5 5 6];
y6 = [3.5 3.5 3.5 3.5 3.5 3.5];

x7 = [5 3.5];
y7 = [3.5 3.5];

x8 = [3.5 3.5 3.5 3.5];
y8 = [6 3.5 2 1];

% Crear figura y graficar los puntos
figure;
h1 = plot(x1, y1, 'o-', 'LineWidth', 1.5, 'MarkerSize', 8); hold on;
h2 = plot(x2, y2, 's-', 'LineWidth', 1.5, 'MarkerSize', 8);
h3 = plot(x3, y3, '^-', 'LineWidth', 1.5, 'MarkerSize', 8);
h4 = plot(x4, y4, 'd-', 'LineWidth', 1.5, 'MarkerSize', 8);
h5 = plot(x5, y5, 'p-', 'LineWidth', 1.5, 'MarkerSize', 8);
h6 = plot(x6, y6, 'h-', 'LineWidth', 1.5, 'MarkerSize', 8);
h7 = plot(x7, y7, 'v-', 'LineWidth', 1.5, 'MarkerSize', 8);
h8 = plot(x8, y8, 'x-', 'LineWidth', 1.5, 'MarkerSize', 8);
grid on;
title('Puntos en el plano xy');
xlabel('Coordenada x');
ylabel('Coordenada y');
legend('Conjunto 1', 'Conjunto 2', 'Conjunto 3', 'Conjunto 4', 'Conjunto 5', 'Conjunto 6', 'Conjunto 7', 'Conjunto 8');
axis equal;  % Asegura que los ejes tengan la misma escala

% Añadir casillas de verificación
checkbox1 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 1', 'Value', 1, ...
    'Position', [20 20 100 20], 'Callback', @(src, event) set(h1, 'Visible', bool2str(get(src, 'Value'))));
checkbox2 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 2', 'Value', 1, ...
    'Position', [20 50 100 20], 'Callback', @(src, event) set(h2, 'Visible', bool2str(get(src, 'Value'))));
checkbox3 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 3', 'Value', 1, ...
    'Position', [20 80 100 20], 'Callback', @(src, event) set(h3, 'Visible', bool2str(get(src, 'Value'))));
checkbox4 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 4', 'Value', 1, ...
    'Position', [20 110 100 20], 'Callback', @(src, event) set(h4, 'Visible', bool2str(get(src, 'Value'))));
checkbox5 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 5', 'Value', 1, ...
    'Position', [20 140 100 20], 'Callback', @(src, event) set(h5, 'Visible', bool2str(get(src, 'Value'))));
checkbox6 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 6', 'Value', 1, ...
    'Position', [20 170 100 20], 'Callback', @(src, event) set(h6, 'Visible', bool2str(get(src, 'Value'))));
checkbox7 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 7', 'Value', 1, ...
    'Position', [20 200 100 20], 'Callback', @(src, event) set(h7, 'Visible', bool2str(get(src, 'Value'))));
checkbox8 = uicontrol('Style', 'checkbox', 'String', 'Conjunto 8', 'Value', 1, ...
    'Position', [20 230 100 20], 'Callback', @(src, event) set(h8, 'Visible', bool2str(get(src, 'Value'))));

function str = bool2str(value)
    if value
        str = 'on';
    else
        str = 'off';
    end
end

