require 'spec_helper'

describe 'Cotizador' do
  it 'cotiza correctamente valor de mercado auto con cilindrada 2000  y 1000 de kilometraje' do
    auto = Auto.new(2000, 1000)
    impuesto = Impuesto.new()
    cotizacion = Cotizador.new(impuesto).cotizar(auto)
    expect(cotizacion[:coeficiente_impositivo]).to eq 2
    expect(cotizacion[:valor_mercado]).to eq 1000.0
  end

  it 'cotiza correctamente valor de mercado auto con cilindrada 4000 y 1000 de kilometraje' do
    auto = Auto.new(4000, 1000)
    impuesto = Impuesto.new()
    cotizacion = Cotizador.new(impuesto).cotizar(auto)
    expect(cotizacion[:coeficiente_impositivo]).to eq 4
    expect(cotizacion[:valor_mercado]).to eq 2000.0
  end

  it 'cotiza correctamente valor de mercado camioneta con cilindrada 1500 y 3000 de kilometraje' do
    camioneta = Camioneta.new(1500, 3000)
    impuesto = Impuesto.new()
    cotizacion = Cotizador.new(impuesto).cotizar(camioneta)
    expect(cotizacion[:coeficiente_impositivo]).to eq 2
    expect(cotizacion[:valor_mercado]).to eq 666.6
  end

  xit 'cotiza correctamente valor de mercado camion con cilindrada 2000 y 100000 de kilometraje' do
    camion = Camion.new(2000, 100_000)
    impuesto = Impuesto.new()
    cotizacion = Cotizador.new(impuesto).cotizar(camion)
    expect(cotizacion[:coeficiente_impositivo]).to eq 
    expect(cotizacion[:valor_mercado]).to eq 2000.0
  end
end
