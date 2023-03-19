require 'spec_helper'

describe 'RentaDia' do
=begin
  it 'renta sin recargo por 1 dia calcula bien el importe' do
    renta = RentaDia.new(1)
    importe = renta.calcular_importe('20231903','20232003')
    expect(importe).to eq 2001

  end
  it 'renta sin recargo por 20 dias calcula bien el importe' do
    renta = RentaDia.new(20)
    importe = renta.calcular_importe('20230903','20232903')
    expect(importe).to eq 40020
  end
  it 'renta con recargo por 3 dias calcula bien el importe' do
    renta = RentaDia.new(3)
    importe = renta.calcular_importe('20231903','20232504')
    expect(importe).to eq 12006
  end
=end
end
