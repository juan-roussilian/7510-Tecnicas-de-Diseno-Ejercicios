require_relative './model/alquiler'
require 'date'

entrada = ARGV[0]

if entrada.nil?
  puts 'error: entrada requerida'
  exit 1
end
if Date.parse(ARGV[0]) > Date.parse(ARGV[1])
  puts 'error: La fecha de entrega debe ser posterior o igual a la fecha de inicio'
  exit 1
end

if ARGV[4].to_i <= 0
  puts 'error: El parametro del alquiler debe ser un numero positivo'
  exit 1
end

alquiler = Alquiler.new(ARGV[0], ARGV[1], ARGV[2], ARGV[3], ARGV[4].to_i)
importe = alquiler.importe_total
ganancia = alquiler.ganancia(importe.to_f)

puts "importe:#{importe} & ganancia:#{ganancia}"
