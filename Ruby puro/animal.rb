# Class PAI
class Animal
    def pular
        puts "Toim! Toim! poim!"
    end

    def dormir
        puts "ZZZzzzZZ!"
    end
end

# FILHA
class Cachorro < Animal
    def latir
        puts "AU AU!"
    end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir

# Cachorro é um objeto que possui todos os comportamentos existentes na classe animal
# (pular e dormir), então ele herda esta classe.
# Sendo assim, é possível executar os métodos pular e dormir através de um objeto Cachorro.

# FILHA
class Gato < Animal
    def meow
        puts "awn meow!!!"
    end
end

gato = Gato.new
gato.pular
gato.dormir
gato.meow