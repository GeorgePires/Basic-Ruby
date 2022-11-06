class Foo
    def call
        bar
    end

    private

    def bar
        puts "private method"
    end
end


foo = Foo.new

foo.call