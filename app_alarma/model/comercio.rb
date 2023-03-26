class Comercio
  MENSAJE_ESTADO_ASEGURADO = 'ASEGURADA'.freeze
  MENSAJE_ESTADO_COMPROMETIDO = 'COMPROMETIDA'.freeze
  def initialize(sensor_apertura, sensor_movimiento, sensor_camara)
    @sensor_apertura = sensor_apertura
    @sensor_movimiento = sensor_movimiento
    @sensor_camara = sensor_camara
  end

  def estado
    if @sensor_apertura.activo && (@sensor_movimiento.activo || @sensor_camara.activo)
      return MENSAJE_ESTADO_COMPROMETIDO
    end

    MENSAJE_ESTADO_ASEGURADO
  end
end
