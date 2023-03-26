require 'spec_helper'

describe 'Comercio' do
  it 'Comercio con sensor de apertura activo esta asegurado' do
    sensor_apertura = SensorSimple.new(1)
    sensor_movimiento = SensorMovimiento.new(0)
    sensor_camara = SensorSimple.new(0)
    comercio = Comercio.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'ASEGURADA'
  end


  it 'Comercio con movimiento 10 activo y camara activo esta asegurado' do
    sensor_apertura = SensorSimple.new(0)
    sensor_movimiento = SensorMovimiento.new(10)
    sensor_camara = SensorSimple.new(1)
    comercio = Comercio.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'ASEGURADA'
  end

  it 'Comercio con sensor de apertura activo y camara activo esta comprometido' do
    sensor_apertura = SensorSimple.new(1)
    sensor_movimiento = SensorMovimiento.new(0)
    sensor_camara = SensorSimple.new(1)
    comercio = Comercio.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'COMPROMETIDA'
  end
end
