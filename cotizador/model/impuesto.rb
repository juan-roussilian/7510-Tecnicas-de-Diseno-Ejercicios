class Impuesto
  def coeficiente_impositivo(precio_base, cilindrada)
    ((precio_base * cilindrada) / 1_000_000).truncate
  end
end
