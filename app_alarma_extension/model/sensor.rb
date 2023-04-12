class Sensor
  attr_accessor :estado

  def initialize(estado)
    @estado = estado
  end

  def esta_activo?; end
end

class SensorApertura < Sensor
  PUERTA_CERRADA = 0
  PUERTA_ABIERTA = 1

  def initialize(estado)
    super
    unless [PUERTA_CERRADA,
            PUERTA_ABIERTA].include?(estado)
      raise ArgumentError,
            'El estado del sensor de apertura debe ser 0 o 1'
    end
  end

  def esta_activo?
    @estado == PUERTA_ABIERTA
  end
end

class SensorMovimiento < Sensor
  ESTADOS_MOVIMIENTO = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].freeze
  INICIO_DE_MOVIMIENTO_HUMANO = 5

  def initialize(estado)
    super
    raise ArgumentError, 'Estado debe estar entre 0 y 9' unless ESTADOS_MOVIMIENTO.include?(estado)
  end

  def esta_activo?
    @estado >= INICIO_DE_MOVIMIENTO_HUMANO
  end
end

class SensorCamara < Sensor
  CLIP_DE_ANOMALIAS_GRABADO = 1
  ESTADOS_CAMARA = [0, 1].freeze

  def initialize(estado)
    super
    raise ArgumentError, 'Estado debe ser 0 o 1' unless ESTADOS_CAMARA.include?(estado)
  end

  def esta_activo?
    @estado == CLIP_DE_ANOMALIAS_GRABADO
  end
end
