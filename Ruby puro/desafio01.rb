# Utilizando uma collection do tipo ARRAY.
# Escreva um programa que receba 3 numeros.
# Eno final exiba o resultado de cada um deles ELEVADO A SEGUNDA POTENCIA.

numbers = []

puts "Insira o primeiro numero: "
number1 = gets.chomp.to_i
numbers.push(number1)

puts "Insira o segundo numero: "
number2 = gets.chomp.to_i
numbers.push(number2)

puts "Insira o terceiro numero: "
number3 = gets.chomp.to_i
numbers.push(number3)

puts "\n Os numeros adicionados: #{numbers}"

numbers.map! do |n|
    n ** 2
end

puts "\n Elevado a segunda potência: \n #{numbers}"