class SensorMovimiento
  UMBRAL_MOVIMIENTO_HUMANO = 5
  def initialize(valor_numerico)
    @valor_numerico = valor_numerico
  end

  def activo
    @valor_numerico >= UMBRAL_MOVIMIENTO_HUMANO
  end
end
