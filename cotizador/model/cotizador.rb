class Cotizador
  def initialize(impuesto)
    @impuesto = impuesto
  end

  def cotizar(vehiculo)
    coeficiente_impositivo = vehiculo.calcular_coeficiente_impositivo(@impuesto)
    valor_mercado = vehiculo.calcular_valor_mercado(coeficiente_impositivo)
    {coeficiente_impositivo:, valor_mercado:}
  end
end
