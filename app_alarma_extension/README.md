Alarma
========

Esta aplicación de línea de comandos recibe como entrada el tipo de propiedad y el valor de un conjunto de sensores y determina si la propiedad está segura o comprometida.
Existen los siguientes tipos de sensores:

- Sensor de apertura de puerta: toma valor 1 si la puerta está abierta, 0 si está cerrada.
- Sensor de movimiento: toma valor entre 0 y 9, se considera movimiento humano cuando el valor es mayor a 5, en casos de valor menor a 5, se asume que se trata de un insecto o mascota.
- Sensor de cámara smart: la cámara graba un clip cuando ve anomalías, toma valor 1 si grabó un clip, 0 si no
grabó nada en ese momento.

La definición de propiedad asegurada/comprometida varia según el tipo de propiedad:

- Departamento: al menos un sensor debe activarse para indicar que la casa está comprometida.
- Local comercial: al menos 2 sensores deben activarse, uno tiene que ser el sensor de apertura de puerta.
- Casa de campo: al menos 2 sensores deben activarse, uno tiene que ser el de cámara.


Por ejemplo: 

Dados los siguientes valores de sensores:

Sensor de apertura de puerta: 1
Sensor de movimiento: 2
Sensor de Cámara smart: 0

Entonces:

Si la propiedad fuera departamento, el estado seria: COMPROMETIDA
Si la propiedad fuera local comercial, el estado seria: ASEGURADA
Si la propiedad fuera Casa de campo, el estado seria: ASEGURADA
