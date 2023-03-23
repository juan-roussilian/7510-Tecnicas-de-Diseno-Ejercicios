class RentaDia
  def initialize(dias)
    @dias = dias
  end

  def calcular_importe(fecha_inicial, fecha_entrega)
    d_inicial = Date.parse(fecha_inicial)
    d_acordada = d_inicial.next_day(@dias)
    d_entrega = Date.parse(fecha_entrega)

    return @dias * 2001 unless d_entrega > d_acordada

    @dias * 2001 * 2
  end
end
