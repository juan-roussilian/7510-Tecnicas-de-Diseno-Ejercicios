class SensorSimple
  def initialize(valor)
    @valor_numerico = valor
  end

  def activo
    @valor_numerico == 1
  end
end
