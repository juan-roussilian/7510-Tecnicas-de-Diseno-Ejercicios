require 'spec_helper'

describe 'SensorMovimiento' do

  it 'sensor movimiento con valor 4 no esta activo' do
    sensor = SensorMovimiento.new(4)
    expect(sensor.activo).to eq false
  end

end
