require 'spec_helper'
describe 'Camion' do
  it 'calcula correctamente su valor de mercado' do
    coeficiente_impositivo = 1
    camioneta = Camion.new(2000,700_000)
    expect(camioneta.calcular_valor_mercado(coeficiente_impositivo)).to eq 1.4
  end
end