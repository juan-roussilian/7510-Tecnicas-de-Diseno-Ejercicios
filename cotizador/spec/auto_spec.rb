require 'spec_helper'
describe 'Auto' do
    it 'calcula correctamente su valor de mercado' do
        coeficiente_impositivo = 3
        auto = Auto.new(1600,20000)
        expect(auto.calcular_valor_mercado(coeficiente_impositivo)).to eq 142.8
    end
end