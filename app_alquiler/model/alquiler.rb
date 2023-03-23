require_relative './cuit_particular'
require_relative './cuit_empresarial'
require_relative './renta_dia'
require_relative './renta_hora'
require_relative './renta_km'
require 'date'
class Alquiler
  def initialize(fecha_inicio, fecha_entrega, cuit, tipo_alquiler, parametro_alquiler)
    @fecha_inicio = fecha_inicio
    @fecha_entrega = fecha_entrega

    @cuit = if cuit[0..1] == '26'
              CuitEmpresarial.new
            else
              CuitParticular.new
            end

    @renta = case tipo_alquiler
             when 'd'
               RentaDia.new(parametro_alquiler.to_i)
             when 'h'
               RentaHora.new(parametro_alquiler.to_i)
             else
               RentaKm.new(parametro_alquiler.to_i)
             end
  end

  def importe_total
    importe = @cuit.aplicar_descuento(@renta.calcular_importe(@fecha_inicio, @fecha_entrega))
    format('%05.1f', importe)
  end

  def ganancia(importe)
    format('%05.1f', importe * 0.45)
  end
end
