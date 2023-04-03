require_relative './model/sensor_simple'
require_relative './model/sensor_movimiento'
require_relative './model/departamento'
require_relative './model/comercio'
require_relative './model/campo'
require_relative './exceptions/sensor_descompuesto'

CARACTER_DEPARTAMENTO = 'd'.freeze
CARACTER_COMERCIO = 'l'.freeze

begin
  sensor_apertura = SensorSimple.new(ARGV[1].to_i)
  sensor_movimiento = SensorMovimiento.new(ARGV[2].to_i)
  sensor_camara = SensorSimple.new(ARGV[3].to_i)
rescue SensorDescompuesto
  puts 'SENSOR DESCOMPUESTO'
  return
end

propiedad = case ARGV[0]
            when CARACTER_DEPARTAMENTO
              Departamento.new(sensor_apertura, sensor_movimiento, sensor_camara)
            when CARACTER_COMERCIO
              Comercio.new(sensor_apertura, sensor_movimiento, sensor_camara)
            else
              Campo.new(sensor_apertura, sensor_movimiento, sensor_camara)
            end

puts "Propiedad #{propiedad.estado}"
