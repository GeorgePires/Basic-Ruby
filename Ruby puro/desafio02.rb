hash = {}

puts "Crie uma chave e adicione um valor à ela."

puts "0- Chave:"
key0 = gets.chomp
puts "0- Valor:"
value0 = gets.chomp
hash[:"#{key0}"] = "#{value0}"

puts "1- Chave:"
key1 = gets.chomp
puts "1- Valor:"
value1 = gets.chomp
hash[:"#{key1}"] = "#{value1}" 

puts "2- Chave:"
key2 = gets.chomp
puts "2- Valor:"
value2 = gets.chomp
hash[:"#{key2}"] = "#{value2}" 

hash.each do |key, value|
    p "Uma das chaves é #{key} e o seu valor é #{value}"
end
