class Cotizador
  def initialize(impuesto)
    @impuesto = impuesto
  end

  def cotizar(_vehiculo)
    coeficiente_impositivo = 2
    valor_mercado = 1000.0
    {coeficiente_impositivo:, valor_mercado:}
  end
end
