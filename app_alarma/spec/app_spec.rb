require 'spec_helper'

describe 'App' do

  it 'departamento con 0 sensores activos esta asegurado' do
    resultado = `ruby app.rb d 0 0 0`
    expect(resultado.strip).to eq 'Propiedad ASEGURADA'
  end
=begin
  it 'departamento con 1 sensor activos esta comprometido' do
    resultado = `ruby app.rb d 1 0 0`
    expect(resultado.strip).to eq 'Propiedad COMPROMETIDA'
    resultado = `ruby app.rb d 0 1 0`
    expect(resultado.strip).to eq 'Propiedad COMPROMETIDA'
    resultado = `ruby app.rb d 0 0 1`
    expect(resultado.strip).to eq 'Propiedad COMPROMETIDA'
  end
=end
end
