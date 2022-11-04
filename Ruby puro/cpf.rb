require "cpf_cnpj"

puts "Digite o número do seu CPF"

cpf = gets.chomp

def check(cpf)
    if CPF.valid?(cpf)
        return "O CPF informado é valido"
    end
    
    puts "O CPF está incorreto!"
end

result = check?(cpf)

puts result