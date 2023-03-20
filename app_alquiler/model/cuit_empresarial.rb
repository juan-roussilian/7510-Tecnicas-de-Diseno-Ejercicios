class CuitEmpresarial
  def aplicar_descuento(importe)
    importe.to_f - importe.to_f / 100 * 5
  end
end
