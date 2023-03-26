class Departamento
  def initialize(sensor_puerta, sensor_movimiento, sensor_camara)
    @sensor_puerta = sensor_puerta
    @sensor_movimiento = sensor_movimiento
    @sensor_camara = sensor_camara
  end

  def estado
    'COMPROMETIDA'
  end
end
