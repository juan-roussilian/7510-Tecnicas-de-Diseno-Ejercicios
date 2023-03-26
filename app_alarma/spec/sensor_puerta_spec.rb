require 'spec_helper'

describe 'SensorPuerta' do

  it 'sensor de puerta con valor 0 no esta activo' do
    sensor = SensorPuerta.new(0)
    expect(sensor.activo).to eq false
  end

  it 'sensor de puerta con valor 1 esta activo' do
    sensor = SensorPuerta.new(1)
    expect(sensor.activo).to eq true
  end
end
