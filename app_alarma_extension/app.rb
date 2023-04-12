require_relative './model/propiedad'
require_relative './model/sensor'

ARGUMENTOS_ESPERADOS = 4
DEPARTAMENTO = 'd'.freeze
COMERCIO = 'l'.freeze
CAMPO = 'c'.freeze
EDIFICIO_GUBERNAMENTAL = 'g'.freeze

if ARGV.length != ARGUMENTOS_ESPERADOS
  puts 'ERROR: ARGUMENTOS INVÁLIDOS'
  exit 1
end

begin
  sensor_apertura = SensorApertura.new(ARGV[1].to_i)
  sensor_movimiento = SensorMovimiento.new(ARGV[2].to_i)
  sensor_camara = SensorCamara.new(ARGV[3].to_i)
rescue ArgumentError
  puts 'SENSOR DESCOMPUESTO'
  exit 1
end

propiedad = case ARGV[0]
            when DEPARTAMENTO
              Departamento.new(sensor_apertura, sensor_movimiento, sensor_camara)
            when COMERCIO
              Comercio.new(sensor_apertura, sensor_movimiento, sensor_camara)
            when CAMPO
              Campo.new(sensor_apertura, sensor_movimiento, sensor_camara)
            when EDIFICIO_GUBERNAMENTAL
              EdificioGubernamental.new(sensor_apertura, sensor_movimiento, sensor_camara)
            else
              puts 'ERROR: PROPIEDAD INVÁLIDA'
              exit 1
            end
resultado = propiedad.determinar_seguridad

puts format('Propiedad %s', resultado)
