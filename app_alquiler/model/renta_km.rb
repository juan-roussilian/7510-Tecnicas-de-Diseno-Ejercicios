class RentaKm
  def initialize(kms)
    @kilometros = kms
  end

  def calcular_importe(fecha_inicial, fecha_entrega)
    d_inicial = Date.parse(fecha_inicial)
    d_entrega = Date.parse(fecha_entrega)

    return 100 + @kilometros * 10 unless d_inicial < d_entrega

    (100 + @kilometros * 10) * 2
  end
end
