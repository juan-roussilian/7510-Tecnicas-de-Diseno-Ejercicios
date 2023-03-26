require 'rspec'

describe 'App' do

  it '01-Departamento comprometido cuando 1 sensor activo' do
    result = `ruby app.rb d 1 0 0`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '02-Departamento esta seguro cuando no hay sensores activos' do
    result = `ruby app.rb d 0 0 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '03-Comercio esta asegurado si solo apertura activo' do
    result = `ruby app.rb l 1 0 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '04-Comercio esta comprometido cuando sensor apertura activo y movimiento 6' do
    result = `ruby app.rb l 1 6 0`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '05-Comercio esta asegurado cuando sensor apertura activo y movimiento 2' do
    result = `ruby app.rb l 1 2 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '06-Campo esta comprometido cuando sensores movimiento y camara activos' do
    result = `ruby app.rb c 0 8 1`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '07-Departamento esta comprometido cuando 3 sensores activos' do
    result = `ruby app.rb d 1 7 1`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end
=begin
  it '08-Sensor descompuesto' do
    result = `ruby app.rb d 33 1 1`
    expect(result.strip).to eq 'SENSOR DESCOMPUESTO'
  end
=end
end

