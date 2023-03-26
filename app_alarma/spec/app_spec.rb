require 'spec_helper'

describe 'App' do

  it 'departamento con 0 sensores activos esta asegurado' do
    resultado = `ruby app.rb d 0 0 0`
    expect(resultado.strip).to eq 'Propiedad ASEGURADA'
  end


end
