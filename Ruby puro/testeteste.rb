array = ['a', 'B', 'b', 'b', 'C', 'c', 'd', 'E', 'e', 'f', 'F', 'g']
contador = 0

array.each do |letter|
  contador = contador + 1 if letter == letter.upcase
end

puts contador