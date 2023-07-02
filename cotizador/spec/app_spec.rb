require 'spec_helper'

describe 'App' do

  it 'sin entrada muestra error' do
    resultado = `ruby app.rb`
    expect(resultado.strip).to eq 'error: entrada requerida'
  end

  it 'auto con cilindrada 1000 y kilometraje 1000 cotiza  ci 1 y vm 500.0' do
    comando = `ruby app.rb auto/1000/1000`
    expect(comando.strip).to eq 'ci:1 & vm:500.0'
  end
  
  it 'auto con cilindrada 2000 y kilometraje 1000 cotiza  ci 2  y vm 1000.0' do
    comando = `ruby app.rb auto/2000/1000`
    expect(comando.strip).to eq 'ci:2 & vm:1000.0'
  end
end
