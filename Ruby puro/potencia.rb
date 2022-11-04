puts "Digite o primeiro número"

number1 = gets.chomp.to_i

puts "Digite o segundo número"

number2 = gets.chomp.to_i

def calc(number1,  number2)
    number1 ** number2
end

result = calc(number1,number2)

puts "#{number1} elevado a #{number2} é igual a #{result} "