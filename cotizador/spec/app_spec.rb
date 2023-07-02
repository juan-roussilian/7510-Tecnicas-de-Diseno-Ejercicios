require 'spec_helper'

describe 'App' do

  it 'sin entrada muestra error' do
    resultado = `ruby app.rb`
    expect(resultado.strip).to eq 'error: entrada requerida'
  end
=begin
  it 'auto con cilindrada 1000 y kilometraje 1000 cotiza  ci 1 y vm 500' do
    resultado = 'ruby app.rb auto/1000/1000'
    expect(resultado.strip).to eq 'ci:1 & vm:500.0'
  end
=end

end
