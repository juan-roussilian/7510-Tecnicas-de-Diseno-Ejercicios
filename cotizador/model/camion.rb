require_relative './vehiculo'

class Camion < Vehiculo
  PRECIO_BASE_CAMION = 2000

  def calcular_coeficiente_impositivo(impuesto)
    impuesto.coeficiente_impositivo(PRECIO_BASE_CAMION, @cilindrada)
  end

  def calcular_valor_mercado(coeficiente_impositivo)
    valor_mercado_numerador = coeficiente_impositivo * PRECIO_BASE_CAMION
    valor_mercado_denominador = 0.002 * (@cilindrada + @kilometraje)
    valor_mercado = valor_mercado_numerador / valor_mercado_denominador
    valor_mercado.truncate(DECIMALES_VALOR_MERCADO)
  end
end
