require 'spec_helper'
describe 'Camioneta' do
    it 'calcula correctamente su valor de mercado' do
        coeficiente_impositivo = 1
        camioneta = Camioneta.new(2000,10_000)
        expect(camioneta.calcular_valor_mercado(coeficiente_impositivo)).to eq 125.0
    end
end