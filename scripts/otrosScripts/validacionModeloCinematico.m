clc;
clear all;
close all;

% Puntos objetivo para validar
puntos_objetivo = [
    [0, 7, 18];
    [5, 5, 15];
    [-5, 5, 15];
    [8, -3, 12];
    [-3, 2, 10];
    [4, 6, 17];
    [-2, 8, 14];
    [0, 0, 20];
    [6, 4, 13];
];

% Validacion
for i = 1:size(puntos_objetivo, 1)
    objetivo = puntos_objetivo(i, :);

    % Cinematica inversa
    soluciones = calcularCinematicaInversa(objetivo);

    fprintf('Punto objetivo: [%f, %f, %f]\n', objetivo(1), objetivo(2), objetivo(3));

    % Validacion con cinematica directa
    for j = 1:size(soluciones, 1)
        q = soluciones(j, :);
        calculado = calcularCinematicaDirecta(q);

        fprintf('Solucion %d: q = [%f, %f, %f]\n', j, q(1), q(2), q(3));
        fprintf('Posicion calculada: [%f, %f, %f]\n', calculado(1), calculado(2), calculado(3));

        % Ajustar la tolerancia para verificar la precision (tolerancia aumentada)
        if norm(calculado - objetivo') < 1e-3
            fprintf('Validacion exitosa.\n\n');
        else
            fprintf('Validacion fallida.\n\n');
        end
    end
end


