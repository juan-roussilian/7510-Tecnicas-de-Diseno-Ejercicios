require_relative '../proveedores/salida_consola'
require 'spec_helper'

describe 'ProveedorSalidaConsola' do
  it 'devuelve en formato correcto el coeficiente impositivo y valor de mercado' do
    mensaje = ProveedorSalidaConsola.new().mensaje_cotizacion(2, 22.3)
    #expect(mensaje).to eq 'ci:2 & vm:22.3'
    expect{ProveedorSalidaConsola.new().mensaje_cotizacion(2, 22.3)}.to output("ci:2 & vm:22.3\n").to_stdout
  end
end