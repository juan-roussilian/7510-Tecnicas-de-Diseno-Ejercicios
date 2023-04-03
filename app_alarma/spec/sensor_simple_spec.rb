require 'spec_helper'

describe 'SensorSimple' do

  it '01-Sensor simple con valor 0 no esta activo' do
    sensor = SensorSimple.new(0)
    expect(sensor.activo).to eq false
  end

  it '02-Sensor simple con valor 1 esta activo' do
    sensor = SensorSimple.new(1)
    expect(sensor.activo).to eq true
  end

  it '03-Sensor simple con valor distinto a 0 o 1 esta descompuesto' do
    expect { SensorSimple.new(2) }.to raise_error(SensorDescompuesto)
  end

end
