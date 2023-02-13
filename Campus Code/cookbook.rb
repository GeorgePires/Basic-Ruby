ADD_RECEITA = 1
PUTS_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4
puts "Bem-vindo ao Cookbook, sua rede social de receitas"

def menu
  puts
  puts " ------------------------------------------------"
  puts "[#{ADD_RECEITA}] Cadastrar uma receita"
  puts "[#{PUTS_RECEITAS}] Ver todas ás receitas"
  puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
  puts "[#{SAIR}] Sair"
  puts " ------------------------------------------------"

  print "Escolha uma opção: "
  return gets.to_i
end

receitas = []

def add_receita(receitas)
  puts "Digite o nome da receita: "
  nome = gets.chomp

  puts "Digite o tipo da receita: "
  tipo = gets.chomp

  receitas << { nome: nome, tipo: tipo }
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
end

def puts_receitas(receitas)
  puts "=============== Receitas cadastradas =================="
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  if receitas.empty?
    puts "Nenhuma receita cadastrada :("
  end
end

def buscar_receitas(receitas)
  puts "Qual receita deseja verificar? "
  pesquisa = gets.chomp

  receitas.each do |receita|
    if receita[:nome] == pesquisa || receita[:tipo] == pesquisa
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    else
      puts 'Nenhuma receita encontrada O.o'
    end
  end
end

opcao = menu()

loop do
  if (opcao == ADD_RECEITA)
    add_receita(receitas)
  elsif (opcao == PUTS_RECEITAS)
    puts_receitas(receitas)
  elsif (opcao == BUSCAR_RECEITAS)
    buscar_receitas(receitas)
  elsif (opcao == SAIR)
    break
  else
    puts 'Opção inválida'
  end

  opcao = menu()
end

puts
puts "Obrigado por usar o CookBook :)"
