require 'spec_helper'

describe 'CuitParticular' do
  it 'descontar con cuit particular sobre 500 da 500' do
    importe_descontado = CuitParticular.new.aplicar_descuento(500)
    expect(importe_descontado).to eq 500
  end
end
