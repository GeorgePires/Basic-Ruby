require_relative 'animal'
require_relative 'gato'
require_relative 'cachorro'

puts "---Class Animal--"
animal = Animal.new
animal.pular
animal.dormir

puts "---Class Cachorro < Animal--"
cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir

puts "---Class Gato < Animal--"
gato = Gato.new
gato.pular
gato.dormir
gato.meow