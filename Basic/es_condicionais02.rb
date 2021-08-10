puts "Escolha um numero: "
num = gets.chomp.to_i

unless num > 10 # A MENOS QUE... 
    puts "O numero digitado é menor que 10 :("
else 
    puts "O numero digitado: #{num} é maior que 10 "
end
