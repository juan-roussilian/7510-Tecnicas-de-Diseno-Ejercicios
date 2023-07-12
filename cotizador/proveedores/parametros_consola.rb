class ProveedorParametrosConsola
  def obtener_parametros(entrada)
    tipo_vehiculo, cilindrada, kilometraje = entrada.split('/')
    cilindrada = cilindrada.to_i
    kilometraje = kilometraje.to_i
    cilindrada_invalida = !cilindrada_valida(cilindrada)
    kms_invalido = !kilometraje_valido(kilometraje)
    vehiculo_invalido = !vehiculo_valido(tipo_vehiculo)

    raise ErrorParametrosInvalidos if cilindrada_invalida || kms_invalido || vehiculo_invalido

    {tipo_vehiculo:, cilindrada:, kilometraje:}
  end

  private

  def vehiculo_valido(vehiculo)
    %w[auto camioneta camion].include? vehiculo
  end

  def cilindrada_valida(cilindrada)
    [1000, 1600, 2000].include? cilindrada
  end

  def kilometraje_valido(kilometraje)
    kilometraje.positive?
  end
end

class ErrorParametrosInvalidos < StandardError
end
