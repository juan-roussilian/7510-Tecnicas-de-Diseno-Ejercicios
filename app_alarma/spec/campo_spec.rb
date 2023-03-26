require 'spec_helper'

describe 'Campo' do
  it '01-Casa de campo con sensor de movimiento 9 esta asegurado' do
    sensor_apertura = SensorSimple.new(0)
    sensor_movimiento = SensorMovimiento.new(9)
    sensor_camara = SensorSimple.new(0)
    comercio = Campo.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'ASEGURADA'
  end

  it '02-Casa de campo con sensor de apertura y camara activos esta comprometido' do
    sensor_apertura = SensorSimple.new(1)
    sensor_movimiento = SensorMovimiento.new(2)
    sensor_camara = SensorSimple.new(1)
    comercio = Campo.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'COMPROMETIDA'
  end

  it '03-Casa de campo con los 3 sensores activos esta comprometido' do
    sensor_apertura = SensorSimple.new(1)
    sensor_movimiento = SensorMovimiento.new(5)
    sensor_camara = SensorSimple.new(1)
    comercio = Campo.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'COMPROMETIDA'
  end
end
