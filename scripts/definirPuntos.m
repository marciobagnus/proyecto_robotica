% Funcion para definir los puntos de cada figura
function puntos = definirPuntos(figura)
  switch figura

  case 1

    x = [-2 2 2 -2 -2];    % Coordenadas x (cerrado)
    y = [-2 -2 2 2 -2];    % Coordenadas y (cerrado)
    z = [6 6 6 6 6];       % Altura constante en z

    puntos = [x' y' z'];

  case 2

    % Parametros del cuadrado inclinado y variante en altura
    lado = 3.0;              % Longitud de cada lado del cuadrado
    inclinacion = pi/6;      % Angulo de inclinacion en radianes
    altura_base = 5;         % Altura base en z
    amplitud_altura = 2;     % Amplitud de la variacion en altura en z (mitad de la variacion total)

    % Coordenadas iniciales del cuadrado en el plano XY
    x = [-lado/2 lado/2 lado/2 -lado/2 -lado/2];
    y = [-lado/2 -lado/2 lado/2 lado/2 -lado/2];

    % Aplicar rotacion/inclinacion en el plano XY
    rotacion_xy = [cos(inclinacion) -sin(inclinacion); sin(inclinacion) cos(inclinacion)];
    cuadrado_xy = rotacion_xy * [x; y];

    % Traslacion al centro del cuadrado
    cuadrado_xy(1,:) = cuadrado_xy(1,:);
    cuadrado_xy(2,:) = cuadrado_xy(2,:);

    % Altura variable en z
    altura_z = altura_base + amplitud_altura * sin(linspace(0, 2*pi, length(x)));

    % Concatenar las coordenadas en un arreglo de puntos
    puntos = [cuadrado_xy' altura_z'];

  case 3

    % Definicion de puntos para un triangulo equilatero en el plano XY
    x = [0 2 -2 0];    % Coordenadas x
    y = [2 -2 -2 2];   % Coordenadas y
    z = [6 6 6 6];     % Altura constante en z

    % Combinacion de coordenadas en matriz de puntos
    puntos = [x' y' z'];

  case 4

    % Definicion de parametros para el circulo
    radio = 2.0;         % Radio del circulo
    num_puntos = 20;    % Numero de puntos para la discretizacion del circulo

    % angulos para los puntos del circulo
    theta = linspace(0, 2*pi, num_puntos);

    % Coordenadas del circulo en el plano XY
    x = radio * cos(theta);
    y = radio * sin(theta);
    z = ones(size(theta)) * 6;  % Altura constante en z (elevado en 6)

    % Concatenar las coordenadas en un arreglo de puntos
    puntos = [x' y' z'];

  case 5
    % Parametros del circulo y variante simetrica en altura
    semi_axis_x = 3.0;       % Semieje en direccion x
    semi_axis_y = 1.5;       % Semieje en direccion y
    center_x = 0;            % Coordenada x del centro del circulo
    center_y = 0;            % Coordenada y del centro del circulo
    height_base = 6;         % Altura base en z
    amplitude_height = 2;    % Amplitud de la variacion en altura en z (mitad de la variacion total)

    num_puntos = 20;         % Numero de puntos para la discretizacion del circulo

    % angulos para los puntos del circulo
    theta = linspace(0, 2*pi, num_puntos);

    % Coordenadas del circulo en el plano XY
    x = semi_axis_x * cos(theta);
    y = semi_axis_y * sin(theta);

    % Altura variable en z
    altura_z = height_base + amplitude_height * sin(theta);

    % Concatenar las coordenadas en un arreglo de puntos
    puntos = [x' y' altura_z'];
case 6
	  % Definicion de los puntos para dibujar el logo UTN
    x1 = [6 5.8 5 3.5 2 1.2 1];
    y1 = [6 5   4 3.5 4 5 6];
    z1 = [12*ones(1,7)];

    x2 = [1.2 2 3.5];
    y2 = [5 4 3.5];
    z2 = [12*ones(1,3)];

    x3 = [5 5.8 6];
    y3 = [3 2 1];
    z3 = [12*ones(1,3)];

    x4 = [5.8 5 3.5 2 1.2 1];
    y4 = [2 3 3.5 3 2 1];
    z4 = [12*ones(1,6)];

    x5 = [1.2 2 3.5];
    y5 = [2 3 3.5];
    z5 = [12*ones(1,3)];

    x6 = [2 1 2 3.5 5 6];
    y6 = [3.5 3.5 3.5 3.5 3.5 3.5];
    z6 = [12*ones(1,6)];

    x7 = [5 3.5];
    y7 = [3.5 3.5];
    z7 = [12*ones(1,2)];

    x8 = [3.5 3.5 3.5 3.5];
    y8 = [6 3.5 2 1];
    z8 = [12*ones(1,4)];

    puntos = [x1', y1', z1';
              x2', y2', z2';
              x3', y3', z3';
              x4', y4', z4';
              x5', y5', z5';
              x6', y6', z6';
              x7', y7', z7';
              x8', y8', z8'
              ];

  otherwise
    error('Opción no válida');
  end
end

