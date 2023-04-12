class Propiedad
  ASEGURADA = 'ASEGURADA'.freeze
  COMPROMETIDA = 'COMPROMETIDA'.freeze

  def initialize(sensor_apertura, sensor_movimiento, sensor_camara)
    @sensor_apertura = sensor_apertura
    @sensor_movimiento = sensor_movimiento
    @sensor_camara = sensor_camara
  end

  def determinar_seguridad; end
end

class Departamento < Propiedad
  def determinar_seguridad
    if @sensor_apertura.esta_activo? ||
       @sensor_movimiento.esta_activo? ||
       @sensor_camara.esta_activo?
      COMPROMETIDA
    else
      ASEGURADA
    end
  end
end

class Comercio < Propiedad
  def determinar_seguridad
    if @sensor_apertura.esta_activo? &&
       (@sensor_movimiento.esta_activo? || @sensor_camara.esta_activo?)
      COMPROMETIDA
    else
      ASEGURADA
    end
  end
end

class Campo < Propiedad
  def determinar_seguridad
    if @sensor_camara.esta_activo? &&
       (@sensor_movimiento.esta_activo? || @sensor_apertura.esta_activo?)
      COMPROMETIDA
    else
      ASEGURADA
    end
  end
end

class EdificioGubernamental < Propiedad
  def determinar_seguridad
    if @sensor_movimiento.esta_activo? && @sensor_apertura.esta_activo?
      COMPROMETIDA
    else
      ASEGURADA
    end
  end
end
