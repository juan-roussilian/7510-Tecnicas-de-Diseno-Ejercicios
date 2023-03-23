require 'spec_helper'

describe 'RentaDia' do

  it 'renta sin recargo por 1 dia debe dar importe de 2001' do
    renta = RentaDia.new(1)
    importe = renta.calcular_importe('20230319','20230320')
    expect(importe).to eq 2001

  end
  it 'renta sin recargo por 20 dias dabe dar importe de 40020' do
    renta = RentaDia.new(20)
    importe = renta.calcular_importe('20230309','20230329')
    expect(importe).to eq 40020
  end

  it 'renta con recargo por 3 dias debe dar importe de 12006' do
    renta = RentaDia.new(3)
    importe = renta.calcular_importe('20230319','20230425')
    expect(importe).to eq 12006
  end

end
