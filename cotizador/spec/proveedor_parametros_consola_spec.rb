require 'spec_helper'
require_relative '../proveedores/parametros_consola'

describe 'ProveedorParametrosConsola' do

  it 'devuelve correctamente los parametros para entrada auto/1000/1000' do
    entrada = 'auto/1000/1000'
    parametros = ProveedorParametrosConsola.new.obtener_parametros(entrada)
    expect(parametros[:tipo_vehiculo]).to eq 'auto'
    expect(parametros[:cilindrada]).to eq 1000
    expect(parametros[:kilometraje]).to eq 1000
  end

  it 'devuelve correctamente los parametros para entrada camion/2000/30000' do
    entrada = 'camion/2000/3000'
    parametros = ProveedorParametrosConsola.new.obtener_parametros(entrada)
    expect(parametros[:tipo_vehiculo]).to eq 'camion'
    expect(parametros[:cilindrada]).to eq 2000
    expect(parametros[:kilometraje]).to eq 3000
  end

end