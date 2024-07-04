function [trayectoria_x, trayectoria_y, trayectoria_z] = generarTrayectorias(puntos)
  h = 0.1; % Paso de tiempo
  trayectoria_x = [];
  trayectoria_y = [];
  trayectoria_z = [];

  for i = 1:size(puntos, 1)-1
    p_ini = puntos(i, :);
    p_fin = puntos(i+1, :);

    % Generar puntos intermedios para el segmento
    t = 0:h:1;
    x_trayectoria = (1-t) * p_ini(1) + t * p_fin(1);
    y_trayectoria = (1-t) * p_ini(2) + t * p_fin(2);
    z_trayectoria = (1-t) * p_ini(3) + t * p_fin(3);

    trayectoria_x = [trayectoria_x; x_trayectoria'];
    trayectoria_y = [trayectoria_y; y_trayectoria'];
    trayectoria_z = [trayectoria_z; z_trayectoria'];
  end
end

