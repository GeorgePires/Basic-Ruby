class Person
    def initialize(nome, text)
        @nome = nome
        @text = text
    end

    def falar
        "Ola #{@nome}, #{@text}"
    end

    def id
        "meu id é o: #{self.object_id}"
    end
end

p = Person.new("George", "lala")

puts p.falar
puts p.id