require 'spec_helper'

describe 'SensorPuerta' do
  it 'sensor de puerta con 0 no esta activo' do
    sensor = SensorPuerta.new(0)
    expect(sensor.activo).to eq false
  end
end
