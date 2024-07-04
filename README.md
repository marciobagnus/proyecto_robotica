# Proyecto de Cinemática de Robots

Autor: Marcio Bagnus
Legajo: 57399

Este proyecto en Octave se centra en la simulación y visualización de la cinemática directa e inversa de un robot con 3 grados de libertad (GDL).

## Archivos en el Proyecto

### 1. animarCinematicaDirecta.m

Este archivo contiene la función `animarCinematicaDirecta` que anima la cinemática directa del robot a lo largo de una trayectoria definida en el espacio.

### 2. calcularCinematicaDirecta.m

La función `calcularCinematicaDirecta` calcula la posición del extremo del robot (efector final) utilizando las matrices de transformación de Denavit-Hartenberg.

### 3. calcularCinematicaInversa.m

Implementa la cinemática inversa del robot para determinar los ángulos de las articulaciones a partir de una posición deseada del efector final.

### 4. definirPuntos.m

Define los puntos que forman diversas figuras geométricas como cuadrados, triángulos y círculos, utilizados para las trayectorias del robot.

### 5. dibujarRobot.m

La función `dibujarRobot` dibuja el robot con sus articulaciones y eslabones en una posición dada.

### 6. generarTrayectorias.m

Genera trayectorias suaves entre los puntos definidos por `definirPuntos`, adaptando las dimensiones para que sean alcanzables por el robot.

### 7. main.m

El archivo principal `main.m` permite al usuario seleccionar diferentes opciones de figuras geométricas para ser dibujadas por el robot, utilizando las funciones anteriores.

### 8. matrizDenavitHartenberg.m

Implementa la matriz de transformación de Denavit-Hartenberg que describe la relación geométrica entre eslabones consecutivos del robot.

## Opciones Disponibles para Dibujar

El programa permite dibujar las siguientes figuras:

- **Cuadrado**: Cuadrado en el plano XY con altura constante en Z.
- **Cuadrado Inclinado**: Cuadrado inclinado con variación en altura Z.
- **Triángulo**: Triángulo equilátero en el plano XY con altura constante en Z.
- **Círculo**: Círculo en el plano XY con altura constante en Z.
- **Círculo Inclinado**: Elipse inclinada en el plano XY con variación simétrica en altura Z.
- **Logo UTN**: Figura específica del logo UTN definida por puntos en el espacio XYZ.

## Ejecución
Para ejecutar el programa, existen dos opciones:

1- Por consola: simplemente ejecuta `main.m` y sigue las instrucciones en pantalla. Al cerrar la figura realizada podras volver a ingresar una opción.

2- Menú interactivo: ejecuta `mainGUI.m` y selecciona la opcion deseada.

