class Foo
    def call(instance)
        self.bar
    end

    protected

    def bar
        puts "protected method"
    end
end


instance1 = Foo.new

instance2 = Foo.new

instance1.call(instance1)
instance1.call(instance2)