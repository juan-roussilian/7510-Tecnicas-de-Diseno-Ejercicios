require 'spec_helper'

describe 'CuitEmpresarial' do
  it 'descontar con cuit empresarial sobre 500 da 475' do
    importe_descontado = CuitEmpresarial.new.aplicar_descuento(500)
    expect(importe_descontado).to eq 475
  end
end
