
% Definir la función para la opción seleccionada fuera de la función principal
function opcionSeleccionada(~, ~, opcion, fig)

    % Verificar si el usuario desea salir
    if opcion == 7  % 4 es el índice de la opción 'Salir' en el arreglo opciones
        disp('Programa terminado.');
        close(fig);  % Cierra la figura
        close all;
        return;      % Termina la ejecución de la función
    end

    % Definir los puntos de la figura seleccionada (simulado, define esta función)
    puntos = definirPuntos(opcion);

    % Ajustar la escala de los puntos para que se adapten a las dimensiones del robot
    puntos = puntos * 3;

    % Generar trayectorias simuladas (simulado, define esta función)
    [trayectoria_x, trayectoria_y, trayectoria_z] = generarTrayectorias(puntos);

    % Llamar a la función para animar la cinemática directa del robot (simulado)
    animarCinematicaDirecta(trayectoria_x, trayectoria_y, trayectoria_z);

    disp('¡Dibujo completado!');

    % Esperar a que se cierre la figura antes de continuar
    %waitfor(fig);
end
