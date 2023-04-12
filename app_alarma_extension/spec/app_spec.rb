require 'rspec'

describe 'App' do

  it '01-Departamento comprometido cuando 1 sensor activo' do
    result = `ruby app.rb d 1 0 0`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end
  
  it '02-Departamento está seguro cuando no hay sensores activos' do
    result = `ruby app.rb d 0 0 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '03-Comercio está asegurado si solo apertura activo' do
    result = `ruby app.rb l 1 0 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '04-Comercio está comprometido cuando sensor apertura activo y movimiento 6' do
    result = `ruby app.rb l 1 6 0`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '05-Comercio está asegurado cuando sensor apertura activo y movimiento 2' do
    result = `ruby app.rb l 1 2 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '06-Campo está comprometido cuando sensores movimiento y camara activos' do
    result = `ruby app.rb c 0 8 1`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '07-Departamento está comprometido cuando 3 sensores activos' do
    result = `ruby app.rb d 1 7 1`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '08-Sensor de apertura descompuesto' do
    result = `ruby app.rb d 33 1 1`
    expect(result.strip).to eq 'SENSOR DESCOMPUESTO'
  end
  # Tests de aceptación adicionales
  it '09-Sensor de movimiento descompuesto' do
    result = `ruby app.rb d 1 20 1`
    expect(result.strip).to eq 'SENSOR DESCOMPUESTO'
  end

  it '10-Sensor de cámara descompuesto' do
    result = `ruby app.rb d 1 1 2`
    expect(result.strip).to eq 'SENSOR DESCOMPUESTO'
  end

  it '11-Comercio está comprometido cuando sensor apertura activo y movimiento 5' do
    result = `ruby app.rb l 1 5 0`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '12-Comercio está comprometido cuando solo sensor apertura y cámara activos' do
    result = `ruby app.rb l 1 0 1`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '13-Comercio está asegurado cuando sensores de movimiento y cámara activos' do
    result = `ruby app.rb l 0 7 1`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '14-Campo está comprometido cuando solo sensor apertura y cámara activos' do
    result = `ruby app.rb c 1 3 1`
    expect(result.strip).to eq 'Propiedad COMPROMETIDA'
  end

  it '15-Campo está asegurado cuando sensores de apertura y movimiento activos' do
    result = `ruby app.rb c 1 5 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

  it '16-Propiedad distinta a d,l,c es inválida' do
    result = `ruby app.rb x 1 5 0`
    expect(result.strip).to eq 'ERROR: PROPIEDAD INVÁLIDA'
  end

  it '17-Argumentos inválidos' do
    result = `ruby app.rb`
    expect(result.strip).to eq 'ERROR: ARGUMENTOS INVÁLIDOS'
  end

  it '18-Departamento con sensor de movimiento 4 está asegurado' do
    result = `ruby app.rb d 0 4 0`
    expect(result.strip).to eq 'Propiedad ASEGURADA'
  end

end
