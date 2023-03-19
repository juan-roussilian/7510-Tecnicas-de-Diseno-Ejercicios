require 'spec_helper'

describe 'RentaKm' do
=begin
  it 'renta sin recargo por 1 km calcula bien el importe' do
    renta = RentaKm.new(1)
    importe = renta.calcular_importe('20231903','20231903')
    expect(importe).to eq 110

  end
  it 'renta sin recargo por 100 km calcula bien el importe' do
    renta = RentaKm.new(100)
    importe = renta.calcular_importe('20231903','20231903')
    expect(importe).to eq 1100
  end
  it 'renta con recargo por 100 km calcula bien el importe' do
    renta = RentaKm.new(100)
    importe = renta.calcular_importe('20231903','20231904')
    expect(importe).to eq 2200
  end
=end
end
