puts "Escolha um numero entre 1 e 5: "
num = gets.chomp.to_i

case num 
when 1
    puts "Vc escolheu a opção 1"
when 2
    puts "Vc escolheu a opção 2"
when 3
    puts "Vc escolheu a opção 3"
when 4
    puts "Vc escolheu a opção 4"
when 5
    puts "Vc escolheu a opção 5"
else
  puts "Escolha somente entre 1 e 5"
end
