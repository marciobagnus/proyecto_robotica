function q = calcularCinematicaInversa(p)

  %% Constantes
  d1 = 15;
  a2 = 7;
  a3 = 3;

  %% Variables definidas por el usuario
  x = p(1);
  y = p(2);
  z = p(3);

  %% Cáculo de la Cinemática inversa
  q1 = atan2(y, x) - pi/2;
  q3cos = (x^2 + y^2 + (z-d1)^2 - a2^2 - a3^2) / (2 * a2 * a3);

  if abs(q3cos) > 1
    q3cos = sign(q3cos);
    %disp('Cuidado! Argumento del coseno > 1');
  end

  q3_1 = atan2(sqrt(1-(q3cos)^2),q3cos);
  q2_1 = atan2(z-d1, sqrt(x^2+y^2))-atan2(a3*sin(q3_1), a2+a3*cos(q3_1));

  q3_2 = atan2(-sqrt(1-(q3cos)^2),q3cos);
  q2_2 = atan2(z-d1, sqrt(x^2+y^2))-atan2(a3*sin(q3_2), a2+a3*cos(q3_2));


  q = [q1 q2_1 q3_1; q1 q2_2 q3_2 ];


endfunction

