class SensorSimple
  VALOR_ACTIVIDAD = 1
  def initialize(valor)
    @valor_numerico = valor
  end

  def activo
    @valor_numerico == VALOR_ACTIVIDAD
  end
end
