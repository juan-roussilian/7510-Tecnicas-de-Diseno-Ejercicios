require 'spec_helper'

describe 'RentaKm' do

  it 'renta sin recargo por 1 km debe dar importe de 110' do
    renta = RentaKm.new(1)
    importe = renta.calcular_importe('20230319','20230319')
    expect(importe).to eq 110

  end

  it 'renta sin recargo por 100 km debe dar importe de 1100' do
    renta = RentaKm.new(100)
    importe = renta.calcular_importe('20230319','20230319')
    expect(importe).to eq 1100
  end

  it 'renta con recargo por 100 km debe dar importe de 2200' do
    renta = RentaKm.new(100)
    importe = renta.calcular_importe('20230303','20230304')
    expect(importe).to eq 2200
  end

end
