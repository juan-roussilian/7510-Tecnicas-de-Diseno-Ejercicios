require_relative './model/sensor_simple'
require_relative './model/sensor_movimiento'
require_relative './model/departamento'

sensor_puerta = SensorSimple.new(ARGV[1].to_i)
sensor_movimiento = SensorMovimiento.new(ARGV[2].to_i)
sensor_camara = SensorSimple.new(ARGV[3].to_i)

propiedad = Departamento.new(sensor_puerta, sensor_movimiento, sensor_camara)
puts "Propiedad #{propiedad.estado}"
