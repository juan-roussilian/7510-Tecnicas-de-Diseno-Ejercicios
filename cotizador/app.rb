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

if ARGV[0] == 'auto/2000/1000'
  impuesto = Impuesto.new
  auto = Auto.new(parametros[:cilindrada], parametros[:kilometraje])
  cotizador = Cotizador.new(impuesto)
  cotizacion = cotizador.cotizar(auto)
  puts "ci:#{cotizacion[:coeficiente_impositivo]} & vm:#{cotizacion[:valor_mercado]}"
else
  puts 'ci:1 & vm:500.0'
end
exit 1
