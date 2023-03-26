class Departamento
  MENSAJE_ESTADO_ASEGURADO = 'ASEGURADA'.freeze
  MENSAJE_ESTADO_COMPROMETIDO = 'COMPROMETIDA'.freeze
  def initialize(sensor_puerta, sensor_movimiento, sensor_camara)
    @sensor_puerta = sensor_puerta
    @sensor_movimiento = sensor_movimiento
    @sensor_camara = sensor_camara
  end

  def estado
    if @sensor_puerta.activo || @sensor_movimiento.activo || @sensor_camara.activo
      return MENSAJE_ESTADO_COMPROMETIDO
    end

    MENSAJE_ESTADO_ASEGURADO
  end
end
