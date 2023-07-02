class ProveedorParametrosConsola
  def self.obtener_parametros(entrada)
    tipo_vehiculo, cilindrada, kilometraje = entrada.split('/')
    cilindrada = cilindrada.to_i
    kilometraje = kilometraje.to_i
    {tipo_vehiculo:, cilindrada:, kilometraje:}
  end
end
