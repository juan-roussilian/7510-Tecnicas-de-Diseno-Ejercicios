class RentaHora
  def initialize(horas)
    @horas = horas
  end

  def calcular_importe(fecha_inicial, fecha_entrega)
    d_inicial = Date.parse(fecha_inicial)
    d_acordada = d_inicial.next_day(@horas / 24)
    d_entrega = Date.parse(fecha_entrega)
    return @horas * 99 unless d_entrega > d_acordada

    @horas * 99 * 2
  end
end
