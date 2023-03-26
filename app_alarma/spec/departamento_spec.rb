require 'spec_helper'

describe 'Departamento' do

  it '01-Departamento con sensor de apertura activo esta comprometido' do
    sensor_apertura = SensorSimple.new(1)
    sensor_movimiento = SensorMovimiento.new(3)
    sensor_camara = SensorSimple.new(0)
    departamento = Departamento.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(departamento.estado).to eq 'COMPROMETIDA'
  end
  it '02-Departamento sin sensores activos esta asegurado' do
    sensor_apertura = SensorSimple.new(0)
    sensor_movimiento = SensorMovimiento.new(2)
    sensor_camara = SensorSimple.new(0)
    departamento = Departamento.new(sensor_apertura, sensor_movimiento, sensor_camara)
    expect(departamento.estado).to eq 'ASEGURADA'
  end

end
