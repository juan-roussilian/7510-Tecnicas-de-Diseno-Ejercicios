Chopper, proyecto base ruby
===========================


## Preparación del ambiente

sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install -y git
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2.0
gem install bundler

## Uso del proyecto

Una vez realizada la instalación:

1. Instalar las dependencias del proyecto ejecutando _bundle install_
2. Ejecutar las pruebas ejecutando _bundle exec rake_

## Consigna del ejercicio

Escribir la clase Chopper de manera tal que todas las preubas pasen.
Hacer pasar las pruebas de 1 por vez utilizando TDD a integracion continua.
El chop devuelve la posición del elemento en el array.
El metodo sum, devuelve el texto de los dígitos de la sumatoria de los numeros contenidos en el array siempre que los esa sumatoria no exceda los dos dígitos.
En ambos casos se asume que el array no contendra numeros negativos.