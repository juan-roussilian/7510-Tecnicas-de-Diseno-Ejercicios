class Auto
  PRECIO_BASE_AUTO = 1000
  DECIMALES_VALOR_MERCADO = 1
  def initialize(cilindrada, kilometraje)
    @cilindrada = cilindrada
    @kilometraje = kilometraje
  end

  def calcular_coeficiente_impositivo(impuesto)
    impuesto.coeficiente_impositivo(PRECIO_BASE_AUTO, @cilindrada)
  end

  def calcular_valor_mercado(coeficiente_impositivo)
    valor_mercado = (coeficiente_impositivo * PRECIO_BASE_AUTO) / (1 + 0.001 * @kilometraje)
    valor_mercado.truncate(DECIMALES_VALOR_MERCADO)
  end
end
