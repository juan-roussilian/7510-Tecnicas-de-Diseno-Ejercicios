require 'spec_helper'

describe 'App' do
=begin
  it 'sin entrada muestra error' do
    resultado = `ruby app.rb`
    expect(resultado.strip).to eq 'error: entrada requerida'
  end

  it 'entrada con fechas incorrectas muestra error' do
    resultado = `ruby app.rb 20230201 20230101 20421937649 h 5`
    expect(resultado.strip).to eq 'error: La fecha de entrega debe ser posterior o igual a la fecha de inicio'
  end

  it 'entrada con cuit incorrecto muestra error' do
    resultado = `ruby app.rb 20230101 20230101 99999 h 5`
    expect(resultado.strip).to eq 'error: El cuit debe ser un numero de 11 digitos'
  end

  it 'entrada con tipo de alquiler incorrecto muestra error' do
    resultado = `ruby app.rb 20230101 20230101 20421937649 x 5`
    expect(resultado.strip).to eq 'error: El tipo de alquiler debe ser "h", "k" o "d"'
  end

  it 'entrada con parametro de alquiler negativo muestra error' do
    resultado = `ruby app.rb 20230101 20230101 20421937649 k -10`
    expect(resultado.strip).to eq 'error: El parametro del alquiler debe ser un numero positivo'
  end

  it 'alquiler particular de 3 dias sin recargo imprime correctamente' do
    resultado = `ruby app.rb 20230101 20230401 20421937649 d 3`
    expect(resultado.strip).to eq 'importe:6003.0 & ganancia:2701.4'
  end
=end
end
