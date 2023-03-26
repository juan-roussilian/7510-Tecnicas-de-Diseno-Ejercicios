require 'spec_helper'

describe 'SensorMovimiento' do

  it '01-Sensor movimiento con valor 4 no esta activo' do
    sensor = SensorMovimiento.new(4)
    expect(sensor.activo).to eq false
  end
  it '02-Sensor movimiento con valor 5 esta activo' do
    sensor = SensorMovimiento.new(5)
    expect(sensor.activo).to eq true
  end

end
