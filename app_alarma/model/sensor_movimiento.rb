class SensorMovimiento
  def initialize(valor_numerico)
    @valor_numerico = valor_numerico
  end

  def activo
    @valor_numerico >= 5
  end
end
