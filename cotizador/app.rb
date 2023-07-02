require_relative './model/cotizador'
require_relative './model/impuesto'
require_relative './model/auto'
require_relative './proveedores/parametros_consola'

entrada = ARGV[0]

if entrada.nil?
  puts 'error: entrada requerida'
  exit 1
end

parametros = ProveedorParametrosConsola.obtener_parametros(entrada)

if parametros[:tipo_vehiculo] == 'auto'
  impuesto = Impuesto.new
  auto = Auto.new(parametros[:cilindrada], parametros[:kilometraje])
  cotizador = Cotizador.new(impuesto)
  cotizacion = cotizador.cotizar(auto)
  puts "ci:#{cotizacion[:coeficiente_impositivo]} & vm:#{cotizacion[:valor_mercado]}"
end
exit 1
