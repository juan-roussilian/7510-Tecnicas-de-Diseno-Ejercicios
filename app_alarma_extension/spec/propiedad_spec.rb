require 'spec_helper'

describe 'Propiedad' do

  it 'Departamento con un sensor activo es COMPROMETIDA' do
    resultado = Departamento.new(SensorApertura.new(1), SensorMovimiento.new(0), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'COMPROMETIDA'
  end

  it 'Departamento sin sensores activos es ASEGURADA' do
    resultado = Departamento.new(SensorApertura.new(0), SensorMovimiento.new(0), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'ASEGURADA'
  end

  it 'Comercio con sensor apertura activo es ASEGURADA' do
    resultado = Comercio.new(SensorApertura.new(1), SensorMovimiento.new(0), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'ASEGURADA'
  end

  it 'Comercio con sensor apertura activo y sensor movimiento 6 es COMPROMETIDA' do
    resultado = Comercio.new(SensorApertura.new(1), SensorMovimiento.new(6), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'COMPROMETIDA'
  end

  it 'Campo con sensor movimiento 8 y cámara 1 es COMPROMETIDA' do
    resultado = Campo.new(SensorApertura.new(0), SensorMovimiento.new(8), SensorCamara.new(1)).determinar_seguridad
    expect(resultado).to eq 'COMPROMETIDA'
  end

  it 'Comercio con sensor de apertura 1, sensor de movimiento 0 y sensor de cámara 1 es COMPROMETIDA' do
    resultado = Comercio.new(SensorApertura.new(1), SensorMovimiento.new(0), SensorCamara.new(1)).determinar_seguridad
    expect(resultado).to eq 'COMPROMETIDA'
  end

  it 'Campo con sensor de apertura 1, sensor de movimiento 3 y sensor de cámara 1 es COMPROMETIDA' do
    resultado = Campo.new(SensorApertura.new(1), SensorMovimiento.new(3), SensorCamara.new(1)).determinar_seguridad
    expect(resultado).to eq 'COMPROMETIDA'
  end


  it 'Edificio gubernamental con sensor de camara 0, sensor de movimiento 6 y sensor de apertura 0 esta ASEGURADA' do
    resultado = EdificioGubernamental.new(SensorApertura.new(0), SensorMovimiento.new(6), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'ASEGURADA'
  end

  it 'Edificio gubernamental con sensor de camara 1, sensor de movimiento 4 y sensor de apertura 0 esta ASEGURADA' do
    resultado = EdificioGubernamental.new(SensorApertura.new(0), SensorMovimiento.new(6), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'ASEGURADA'
  end

  it 'Edificio gubernamental con sensor de camara 0, sensor de movimiento 0 y sensor de apertura 1 esta ASEGURADA' do
    resultado = EdificioGubernamental.new(SensorApertura.new(0), SensorMovimiento.new(0), SensorCamara.new(1)).determinar_seguridad
    expect(resultado).to eq 'ASEGURADA'
  end

  it 'Edificio gubernamental con sensor de camara 0, sensor de movimiento 6 y sensor de apertura 1 esta COMPROMETIDA' do
    resultado = EdificioGubernamental.new(SensorApertura.new(1), SensorMovimiento.new(6), SensorCamara.new(0)).determinar_seguridad
    expect(resultado).to eq 'COMPROMETIDA'
  end

end
