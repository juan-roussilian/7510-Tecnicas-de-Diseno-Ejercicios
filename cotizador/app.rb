require_relative './model/cotizador'
require_relative './model/impuesto'
require_relative './model/auto'
require_relative './model/camioneta'
require_relative './model/camion'
require_relative './proveedores/parametros_consola'
require_relative './proveedores/salida_consola'

TIPO_VEHICULO_AUTO = 'auto'.freeze
TIPO_VEHICULO_CAMIONETA = 'camioneta'.freeze
TIPO_VEHICULO_CAMION = 'camion'.freeze

entrada = ARGV[0]
salida_consola = ProveedorSalidaConsola.new

if entrada.nil?
  salida_consola.error_falta_entrada
  exit 1
end

parametros = ProveedorParametrosConsola.obtener_parametros(entrada)

case parametros[:tipo_vehiculo]
when TIPO_VEHICULO_AUTO
  vehiculo = Auto.new(parametros[:cilindrada], parametros[:kilometraje])
when TIPO_VEHICULO_CAMIONETA
  vehiculo = Camioneta.new(parametros[:cilindrada], parametros[:kilometraje])
when TIPO_VEHICULO_CAMION
  vehiculo = Camion.new(parametros[:cilindrada], parametros[:kilometraje])
end

impuesto = Impuesto.new
cotizador = Cotizador.new(impuesto)
cotizacion = cotizador.cotizar(vehiculo)
salida_consola.mensaje_cotizacion(cotizacion[:coeficiente_impositivo], cotizacion[:valor_mercado])
exit 1
