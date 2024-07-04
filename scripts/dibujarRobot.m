function dibujarRobot(q)
  %% Constantes
  d1 = 15;
  a2 = 7;
  a3 = 3;

  %% Variables
  q1 = q(1);
  q2 = q(2);
  q3 = q(3);

  % Parámetros de D-H
  theta = [(pi/2 + q1) q2 q3];
  d = [d1 0 0];
  a = [0 a2 a3];
  alpha = [pi/2 0 0];

  % Matrices de transformación D-H
  A01 = matrizDenavitHartenberg(theta(1), d(1), a(1), alpha(1));
  A12 = matrizDenavitHartenberg(theta(2), d(2), a(2), alpha(2));
  A23 = matrizDenavitHartenberg(theta(3), d(3), a(3), alpha(3));

  % Cálculo de las posiciones de cada eslabón
  O0 = [0 0 0 1]';
  O1 = A01 * O0;
  O2 = A01 * A12 * O0;
  O3 = A01 * A12 * A23 * O0;

  % Dibujar el robot
  plot3([O0(1) O1(1)], [O0(2) O1(2)], [O0(3) O1(3)], 'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Eslabón 1 (gris)
  hold on;
  plot3([O1(1) O2(1)], [O1(2) O2(2)], [O1(3) O2(3)], 'b', 'LineWidth', 2); % Eslabón 2 (azul)
  plot3([O2(1) O3(1)], [O2(2) O3(2)], [O2(3) O3(3)], 'g', 'LineWidth', 2); % Eslabón 3 (verde)

  % Marcas para las articulaciones
  plot3(O0(1), O0(2), O0(3), 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k'); % Origen (negro)
  plot3(O1(1), O1(2), O1(3), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Articulación 1 (rojo)
  plot3(O2(1), O2(2), O2(3), 'mo', 'MarkerSize', 8, 'MarkerFaceColor', 'm'); % Articulación 2 (magenta)
  plot3(O3(1), O3(2), O3(3), 'co', 'MarkerSize', 8, 'MarkerFaceColor', 'c'); % Extremo (cian)

  % Configurar límites de los ejes
  axis([-10, 10, -10, 10, -1, 25]);

  % Etiquetas y título
  xlabel('Posición x []'); ylabel('Posición y []'); zlabel('Posición z []');
  title('Dibujo de la opcion seleccionada con un robot de 3 GDL');

  % Mostrar grid
  grid on;

  % Mantener aspecto igual
  axis equal;

  % Pausa breve para la visualización
  drawnow;
end

