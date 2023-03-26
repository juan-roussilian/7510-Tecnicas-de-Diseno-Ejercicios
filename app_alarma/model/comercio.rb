class Comercio
  def initialize(sensor_apertura, sensor_movimiento, sensor_camara)
    @sensor_apertura = sensor_apertura
    @sensor_movimiento = sensor_movimiento
    @sensor_camara = sensor_camara
  end

  def estado
    'ASEGURADA'
  end
end
