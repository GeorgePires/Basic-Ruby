result = ''
functions = {1 => '1- Soma', 2 => '2- Subtração', 3 => '3- Multiplicação', 4 => '4- Divisão'}

loop do
  puts result 
  puts 'Selecione uma das seguintes opções'
  puts '1- Soma'
  puts '2- Subtração'
  puts '3- Multiplicação'
  puts '4- Divisão'
  puts '0- Sair'
  print 'Opção: '

  option = gets.chomp.to_i
  # Limpa o console
  system "clear"

  if option == 0
    break
  elsif option > 4
    result = 'Opção inválida'
  else functions.include?(option)
    o = functions[option]
    puts "Vc escolheu a opção: #{o}"

    print 'Digite o primeiro número: '
    num1 = gets.chomp.to_i
  
    print 'Digite o segundo número: '
    num2 = gets.chomp.to_i
  end

  if option == 1 
    soma = num1 + num2
    result = "O resultado da soma é #{soma}."
  elsif option == 2
    subtracao = num1 - num2
    result = "O resultado da subtração é #{subtracao}."
  elsif option == 3
    multiplicacao = num1 * num2
    result = "O resultado da multiplicação é #{multiplicacao}."
  elsif option == 4
    devisao = num1 / num2
    result = "O resultado da devisão é #{devisao}."
  end
end