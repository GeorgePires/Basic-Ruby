class User
    def add(name)
        @name = name
        puts "User: #{name} adicionado!"
        hello
    end

    def hello
        puts "Seja bem-vindo(a), #{@name}!"
    end
end

first_user = User.new
first_user.add("George")