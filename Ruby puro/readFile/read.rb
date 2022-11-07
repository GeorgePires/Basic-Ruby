puts '----- LISTA DE AMIGOS -----'
file = File.open('readFile/list.txt')

array = []
file.each do |line|
    array << line
    puts "Achei na lista: #{line}"
    
end

puts array