class Bar
    def foo
        $global = 0
        p $global
    end    
end

class Baz
    def qux
        $global += 1
        p $global
    end
end

bar = Bar.new
baz = Baz.new

bar.foo
baz.qux
baz.qux

puts $global