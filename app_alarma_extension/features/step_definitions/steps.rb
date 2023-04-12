Dado('que sensor camara esta activado') do
  @estado_camara = 1
end

Dado('que sensor movimiento esta activado') do
  @estado_movimiento = 8
end

Dado('que sensor apertura esta activado') do
  @estado_apertura = 1
end

Cuando('consulto estado de la propiedad') do
  estado_apertura = @estado_apertura || 0
  estado_camara = @estado_camara || 0
  estado_movimiento = @estado_movimiento || 0
  comando = "ruby app.rb g #{estado_apertura} #{estado_movimiento} #{estado_camara}"
  @resultado = `#{comando}`
end

Entonces('esta asegurada') do
  expect(@resultado.strip).to eq 'Propiedad ASEGURADA'
end

Entonces('esta comprometida') do
  expect(@resultado.strip).to eq 'Propiedad COMPROMETIDA'
end
