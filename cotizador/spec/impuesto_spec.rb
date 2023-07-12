require 'spec_helper'

describe 'Impuesto' do
  it 'calcular coeficiente impositivo correctamente con precio base 5000 y cilindrada 1000' do
    impuesto = Impuesto.new()
    expect(impuesto.coeficiente_impositivo(5000,1000)).to eq 5
  end
  it 'calcular coeficiente impositivo correctamente con precio base 1500 y cilindrada 1600' do
    impuesto = Impuesto.new()
    expect(impuesto.coeficiente_impositivo(1500,1600)).to eq 2
  end
end