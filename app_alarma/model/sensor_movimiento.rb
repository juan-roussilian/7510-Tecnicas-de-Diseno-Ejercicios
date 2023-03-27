require_relative '../exceptions/sensor_descompuesto'

class SensorMovimiento
  UMBRAL_MOVIMIENTO_HUMANO = 5
  VALOR_MAXIMO_SENSOR = 9
  VALOR_MINIMO_SENSOR = 0
  def initialize(valor_numerico)
    if valor_numerico < VALOR_MINIMO_SENSOR || valor_numerico > VALOR_MAXIMO_SENSOR
      raise SensorDescompuesto
    end
    @valor_numerico = valor_numerico
  end

  def activo
    @valor_numerico >= UMBRAL_MOVIMIENTO_HUMANO
  end
end
