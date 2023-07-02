class ProveedorSalidaConsola
  def mensaje_cotizacion(coeficiente_impositivo, valor_mercado)
    puts "ci:#{coeficiente_impositivo} & vm:#{valor_mercado}"
  end

  def error_falta_entrada
    puts 'error: entrada requerida'
  end

  def error_parametros_incorrectos
    puts 'error: uno o mas de los parametros de entrada es invalido'
  end
end
