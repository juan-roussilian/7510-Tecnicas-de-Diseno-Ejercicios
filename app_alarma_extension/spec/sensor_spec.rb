require 'spec_helper'

describe 'Sensor' do
    it 'Sensor apertura con estado 1 está activo' do
      expect(SensorApertura.new(1).esta_activo?).to eq true
    end
  
    it 'Sensor apertura con estado 0 no está activo' do
      expect(SensorApertura.new(0).esta_activo?).to eq false
    end
    
    it 'Sensor movimiento con estado 0 no está activo' do
      expect(SensorMovimiento.new(0).esta_activo?).to eq false
    end

    it 'Sensor movimiento con estado 6 está activo' do
      expect(SensorMovimiento.new(6).esta_activo?).to eq true
    end
    
    it 'Sensor movimiento con estado 8 está activo' do
      expect(SensorMovimiento.new(8).esta_activo?).to eq true
    end

    it 'Sensor camara con estado 1 está activo' do
      expect(SensorCamara.new(1).esta_activo?).to eq true
    end

    it 'Sensor movimiento con estado 7 está activo' do
      expect(SensorMovimiento.new(7).esta_activo?).to eq true
    end

    it 'Sensor apertura con estado 33 devuelve error' do
      expect { SensorApertura.new(33) }.to raise_error(ArgumentError)
    end

    it 'Sensor movimiento con estado 10 devuelve error' do
      expect { SensorMovimiento.new(10) }.to raise_error(ArgumentError)
    end

    it 'Sensor de cámara con estado 2 devuelve error' do
      expect { SensorCamara.new(2) }.to raise_error(ArgumentError)
    end

    it 'Sensor de movimiento con estado 5 está activo' do
      expect(SensorMovimiento.new(5).esta_activo?).to eq true
    end

    it 'Sensor de movimiento con estado 4 no está activo' do
      expect(SensorMovimiento.new(4).esta_activo?).to eq false
    end
end
