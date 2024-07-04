function p = calcularCinematicaDirecta(q)

  %% Constantes
  d1 = 15;
  a2 = 7;
  a3 = 3;

  % Parámetros de D-H
  theta = [pi/2+q(1) q(2) q(3)];
  d = [d1 0 0];
  a = [0 a2 a3];
  alpha = [pi/2 0 0];

  % Matrices de transformación D-H
  A01 = matrizDenavitHartenberg(theta(1), d(1), a(1), alpha(1));
  A12 = matrizDenavitHartenberg(theta(2), d(2), a(2), alpha(2));
  A23 = matrizDenavitHartenberg(theta(3), d(3), a(3), alpha(3));

  % Modelo cinemático del robot
  T = A01 * A12 * A23;

  % Extraer coordenadas finales
  p = T(1:3,4);

end

