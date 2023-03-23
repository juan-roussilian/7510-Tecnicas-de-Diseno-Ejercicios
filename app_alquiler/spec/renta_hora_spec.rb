require 'spec_helper'

describe 'RentaHora' do

  it 'renta sin recargo por 1 hora debe dar un importe de 99' do
    renta = RentaHora.new(1)
    importe = renta.calcular_importe('20230319','20230319')
    expect(importe).to eq 99

  end
  it 'renta sin recargo por 49 horas debe dar un importe de 4950' do
    renta = RentaHora.new(50)
    importe = renta.calcular_importe('20230319','20230321')
    expect(importe).to eq 4950
  end

  it 'renta con recargo por 25 horas calcula bien el importe' do
    renta = RentaHora.new(25)
    importe = renta.calcular_importe('20230319','20230422')
    expect(importe).to eq 4950
  end

end
