require 'spec_helper'

describe 'SensorSimple' do

  it 'sensor simple con valor 0 no esta activo' do
    sensor = SensorSimple.new(0)
    expect(sensor.activo).to eq false
  end

  it 'sensor simple con valor 1 esta activo' do
    sensor = SensorSimple.new(1)
    expect(sensor.activo).to eq true
  end
end
