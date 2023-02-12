puts "Bem-vindo ao Cookbook, sua rede social de receitas"

def menu
  puts " ------------------------------------------------"
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas ás receitas"
  puts "[3] Sair"
  puts " ------------------------------------------------"

  print "Escolha uma opção: "
  return gets.to_i
end

opcao = menu()

receitas = []
while (opcao != 3)
  if (opcao == 1)
    puts "Digite o nome da receita: "
    nome = gets.chomp
    
    puts "Digite o tipo da receita: "
    tipo = gets.chomp

    receitas << { nome: nome, tipo: tipo }
    puts "Receita #{nome} cadastrada com sucesso!"
    puts

  elsif (opcao == 2)
    puts '=============== Receitas cadastradas =================='
    receitas.each do |receita|
     puts "#{receita[:nome]} - #{receita[:tipo]}" 
    end
  else
    puts 'Opção inválida :('
  end

  opcao = menu()
end

puts 'Obrigado por usar o CookBook :)'