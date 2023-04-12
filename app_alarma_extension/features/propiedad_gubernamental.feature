# language: es

Característica: Propiedad gubernamental

  Regla: esta comprometida cuando sensores movimiento y apertura estan actividos

  Escenario: solo sensor camara esta activado
    Dado que sensor camara esta activado
    Cuando consulto estado de la propiedad
    Entonces esta asegurada

  Escenario: solo sensor movimiento esta activado
    Dado que sensor movimiento esta activado
    Cuando consulto estado de la propiedad
    Entonces esta asegurada

  @wip
  Escenario: solo sensor apertura esta activado
    Dado que sensor apertura esta activado
    Cuando consulto estado de la propiedad
    Entonces esta asegurada

  @wip
  Escenario: sensor movimiento y apertura estan activados
    Dado que sensor movimiento esta activado
    Y que sensor apertura esta activado
    Cuando consulto estado de la propiedad
    Entonces esta comprometida
