require 'spec_helper'

describe 'Alquiler' do

  it 'Alquiler particular de 3 dias sin recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230104','20421937649','d','3')
    importe = alquiler.importe_total
    ganancia = alquiler.ganancia(importe.to_f)
    expect(importe).to eq '6003.0'
    expect(ganancia).to eq '2701.4'
  end

  it 'Alquiler empresarial de 5 dias con recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230120','26421937649','d','5')
    importe = alquiler.importe_total
    ganancia = alquiler.ganancia(importe.to_f)
    expect(importe).to eq '19009.5'
    expect(ganancia).to eq '8554.3'
  end

  it 'Alquiler empresarial de 20000km sin recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230101','26421937649','k','20000')
    importe = alquiler.importe_total
    ganancia = alquiler.ganancia(importe.to_f)
    expect(importe).to eq '190095.0'
    expect(ganancia).to eq '85542.8'
  end

  it 'Alquiler particular de 29 horas sin recargo devuelve importe y ganancia correcta' do
    alquiler = Alquiler.new('20230101','20230102','20421937649','h','29')
    importe = alquiler.importe_total
    ganancia = alquiler.ganancia(importe.to_f)
    expect(importe).to eq '2871.0'
    expect(ganancia).to eq '1292.0'
  end
end
