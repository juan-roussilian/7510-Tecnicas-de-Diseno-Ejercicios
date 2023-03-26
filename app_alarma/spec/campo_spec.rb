require 'spec_helper'

describe 'Campo' do
  it 'Campo con sensor de movimiento 9 esta asegurado' do
    sensor_apertura = SensorSimple.new(0)
    sensor_movimiento = SensorMovimiento.new(9)
    sensor_camara = SensorSimple.new(0)
    comercio = Campo.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(comercio.estado).to eq 'ASEGURADA'
  end
end
