#!/usr/bin/env ruby

class Animal
  def initialize(nombre)
    @nombre = nombre
  end

  def show
    puts "[Animal] nombre=#{@nombre}"
  end
end

perro = Animal.new('perro')
perro.show
p perro
