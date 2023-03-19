require 'spec_helper'

describe 'RentaHora' do
=begin
  it 'renta sin recargo por 1 hora calcula bien el importe' do
    renta = RentaHora.new(1)
    importe = renta.calcular_importe('20231903','20231903')
    expect(importe).to eq 99

  end
  it 'renta sin recargo por 49 horas calcula bien el importe' do
    renta = RentaHora.new(50)
    importe = renta.calcular_importe('20231903','20232203')
    expect(importe).to eq 4950
  end
  it 'renta con recargo por 25 horas calcula bien el importe' do
    renta = RentaHora.new(25)
    importe = renta.calcular_importe('20231903','20232204')
    expect(importe).to eq 4950
  end
=end
end
