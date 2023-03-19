require 'spec_helper'

describe 'Alquiler' do
=begin
  it 'Alquiler particular de 3 dias sin recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230401','20421937649','d','3')
    importe = alquiler.importe_total
    ganancia = alquiler.calcular_ganancia(importe)
    expect(importe).to eq '297.0'
    expect(ganancia).to eq '133.7'
  end

  it 'Alquiler empresarial de 5 dias con recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20232001','26421937649','d','5')
    importe = alquiler.importe_total
    ganancia = alquiler.calcular_ganancia(importe)
    expect(importe).to eq '949.5'
    expect(ganancia).to eq '423.2'
  end

  it 'Alquiler empresarial de 20000km sin recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230101','26421937649','k','20000')
    importe = alquiler.importe_total
    ganancia = alquiler.calcular_ganancia(importe)
    expect(importe).to eq '190100.0'
    expect(ganancia).to eq '85600.0'
  end

  it 'Alquiler particular de 29 horas sin recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230201','20421937649','h','29')
    importe = alquiler.importe_total
    ganancia = alquiler.calcular_ganancia(importe)
    expect(importe).to eq '2871.0'
    expect(ganancia).to eq '1292.0'
  end
=end
end
