File.open('readFile/list.txt', 'a') do |line|
    line.puts('arroz')
    line.puts('feijão')
    line.print('azeite de olivia')

    puts "Deu certo!"
end