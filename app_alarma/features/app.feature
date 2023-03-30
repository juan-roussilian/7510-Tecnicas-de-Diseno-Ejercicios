Escenario: a1 - Departamento comprometido con 1 sensor activo
Dada una propiedad 'd'
Y un sensor de apertura con valor 1
Y un sensor de movimiento con valor 0
Y un sensor de camara con valor 0
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "COMPROMETIDA"

Escenario: a2 - Departamento esta seguro cuando no hay sensores activos
Dada una propiedad 'd'
Y un sensor de apertura con valor 0
Y un sensor de movimiento con valor 0
Y un sensor de camara con valor 0
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "ASEGURADA"

Escenario: a3 - Comercio esta asegurado si solo apertura activo
Dada una propiedad 'l'
Y un sensor de apertura con valor 1
Y un sensor de movimiento con valor 0
Y un sensor de camara con valor 0
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "ASEGURADA"

Escenario: a4 - Comercio esta comprometido cuando sensor apertura activo y movimiento 6
Dada una propiedad 'l'
Y un sensor de apertura con valor 1
Y un sensor de movimiento con valor 6
Y un sensor de camara con valor 0
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "COMPROMETIDA"

Escenario: a5 - Comercio esta asegurado cuando sensor apertura activo y movimiento 2
Dada una propiedad 'l'
Y un sensor de apertura con valor 1
Y un sensor de movimiento con valor 2
Y un sensor de camara con valor 0
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "ASEGURADA"

Escenario: a6 - Campo esta comprometido cuando sensores movimiento y camara activos
Dada una propiedad 'c'
Y un sensor de apertura con valor 0
Y un sensor de movimiento con valor 8
Y un sensor de camara con valor 1
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "COMPROMETIDA"

Escenario: a7 - Departamento esta comprometido cuando 3 sensores activos
Dada una propiedad 'd'
Y un sensor de apertura con valor 1
Y un sensor de movimiento con valor 7
Y un sensor de camara con valor 1
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "COMPROMETIDA"

Escenario: a8 - Sensor descompuesto
Dada una propiedad 'd'
Y un sensor de apertura con valor 33
Y un sensor de movimiento con valor 1
Y un sensor de camara con valor 1
Cuando se consulta el estado de la propiedad
Entonces dicho estado sera "SENSOR DESCOMPUESTO"
