class Camioneta
  PRECIO_BASE_CAMIONETA = 1500
  DECIMALES_VALOR_MERCADO = 1
  def initialize(cilindrada, kilometraje)
    @cilindrada = cilindrada
    @kilometraje = kilometraje
  end

  def calcular_coeficiente_impositivo(impuesto)
    impuesto.coeficiente_impositivo(PRECIO_BASE_CAMIONETA, @cilindrada)
  end

  def calcular_valor_mercado(coeficiente_impositivo)
    valor_mercado_numerador = (3 * coeficiente_impositivo * PRECIO_BASE_CAMIONETA)
    valor_mercado_denominador = (0.003 * (@cilindrada + @kilometraje))
    valor_mercado = valor_mercado_numerador / valor_mercado_denominador
    valor_mercado.truncate(DECIMALES_VALOR_MERCADO)
  end
end
