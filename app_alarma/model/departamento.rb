class Departamento
  def initialize(sensor_puerta, sensor_movimiento, sensor_camara)
    @sensor_puerta = sensor_puerta
    @sensor_movimiento = sensor_movimiento
    @sensor_camara = sensor_camara
  end

  def estado
    if @sensor_puerta.activo || @sensor_movimiento.activo || @sensor_camara.activo
      return 'COMPROMETIDA'
    end

    'ASEGURADA'
  end
end
