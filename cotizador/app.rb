require_relative './model/cotizador'
require_relative './model/impuesto'
require_relative './model/auto'
require_relative './model/camioneta'
require_relative './model/camion'
require_relative './proveedores/parametros_consola'

TIPO_VEHICULO_AUTO = 'auto'.freeze
TIPO_VEHICULO_CAMIONETA = 'camioneta'.freeze
TIPO_VEHICULO_CAMION = 'camion'.freeze

entrada = ARGV[0]

if entrada.nil?
  puts 'error: entrada requerida'
  exit 1
end

parametros = ProveedorParametrosConsola.obtener_parametros(entrada)

case parametros[:tipo_vehiculo]
when 'auto'
  vehiculo = Auto.new(parametros[:cilindrada], parametros[:kilometraje])
when 'camioneta'
  vehiculo = Camioneta.new(parametros[:cilindrada], parametros[:kilometraje])
when 'camion'
  vehiculo = Camion.new(parametros[:cilindrada], parametros[:kilometraje])
end

impuesto = Impuesto.new
cotizador = Cotizador.new(impuesto)
cotizacion = cotizador.cotizar(vehiculo)
puts "ci:#{cotizacion[:coeficiente_impositivo]} & vm:#{cotizacion[:valor_mercado]}"
exit 1
