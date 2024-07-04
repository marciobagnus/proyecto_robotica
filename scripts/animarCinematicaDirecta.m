% Función para animar la cinemática directa del robot
function animarCinematicaDirecta(trayectoria_x, trayectoria_y, trayectoria_z)
  trayectoria_real_x = [];
  trayectoria_real_y = [];
  trayectoria_real_z = [];

  for i = 1:length(trayectoria_x)
    p = [trayectoria_x(i), trayectoria_y(i), trayectoria_z(i)];

    % Calcular la cinemática inversa para obtener las posiciones angulares
    q_solutions = calcularCinematicaInversa(p);
    q = q_solutions(1, :); % Usar un conjunto válido de ángulos (en caso de múltiples soluciones)

    % Calcular las posiciones del robot
    p_real = calcularCinematicaDirecta(q);

    % Actualizar la trayectoria real
    trayectoria_real_x = [trayectoria_real_x, p_real(1)];
    trayectoria_real_y = [trayectoria_real_y, p_real(2)];
    trayectoria_real_z = [trayectoria_real_z, p_real(3)];

    % Limpiar el gráfico antes de dibujar
    cla;

    % Dibujar la trayectoria deseada
    plot3(trayectoria_x, trayectoria_y, trayectoria_z, 'k--'); % Desired Trajectory

    % Dibujar la trayectoria real
    %plot3(trayectoria_real_x, trayectoria_real_y, trayectoria_real_z, 'r'); % Real Trajectory
    plot3(trayectoria_real_x, trayectoria_real_y, trayectoria_real_z, 'r', 'LineWidth', 3); % Trayectoria real


    % Dibujar el robot
    dibujarRobot(q);
    pause(0.1);
  end
  % Limpiar la gráfica
  hold off;
end

