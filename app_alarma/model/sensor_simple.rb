require_relative '../exceptions/sensor_descompuesto'
class SensorSimple
  VALOR_ACTIVIDAD = 1
  VALOR_INACTIVIDAD = 0
  def initialize(valor_numerico)
    if valor_numerico != VALOR_ACTIVIDAD && valor_numerico != VALOR_INACTIVIDAD
      raise SensorDescompuesto
    end

    @valor_numerico = valor_numerico
  end

  def activo
    @valor_numerico == VALOR_ACTIVIDAD
  end
end
