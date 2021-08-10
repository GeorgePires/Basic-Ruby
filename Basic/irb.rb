=begin
>>>>>> IRB <<<<<<
 VETORES || ARRAYS || HASHES || SÍMBOLOS || EACH || OP. INTERVALO || TIMES   

=end
irb(main):001:0> v = [1,2,3,4,5]
=> [1, 2, 3, 4, 5]
irb(main):002:1* v[2]
=> 3
irb(main):003:0> h ={"a" => "123", "b" => "456"}
=> {"a"=>"123", "b"=>"456"}
irb(main):004:0> v
=> [1, 2, 3, 4, 5]
irb(main):005:0> h
=> {"a"=>"123", "b"=>"456"}
irb(main):006:0> h ["a"]
=> "123"
irb(main):007:1* h ["b"]
=> "456"
irb(main):008:0>


irb(main):001:0> a = [1,2,3,4,5,88,41,50]
=> [1, 2, 3, 4, 5, 88, 41, 50]
irb(main):002:0> a
=> [1, 2, 3, 4, 5, 88, 41, 50]
irb(main):003:0> a.each {|element| puts element}
1
2
3
4
5
88
41
50
=> [1, 2, 3, 4, 5, 88, 41, 50]
irb(main):013:0> a
=> [1, 2, 3, 4, 5, 88, 41, 50]
irb(main):014:1* a.each do |elment|
irb(main):015:1*   puts elment
irb(main):016:1*   puts elment + 2
irb(main):017:0> end
1
3
2
4
3
5
4
6
5
7
88
90
41
43
50
52
=> [1, 2, 3, 4, 5, 88, 41, 50]
irb(main):018:0> a.each {|element| puts element}
1
2
3
4
5
88
41
50
=> [1, 2, 3, 4, 5, 88, 41, 50]


irb(main):001:0> a =[ 1,2,3,4,5]
=> [1, 2, 3, 4, 5]
irb(main):002:0> (1..5).each {|x| puts x}
1
2
3
4
5
=> 1..5
irb(main):003:0>

irb(main):001:0> a =[ 1,2,3,4,5]
=> [1, 2, 3, 4, 5]
irb(main):002:0> (1..5).each {|x| puts x}
1
2
3
4
5
=> 1..5


irb(main):003:0> 5.times { puts "george"}
george
george
george
george
george
=> 5
irb(main):004:0> 5.times {|x| puts "george - #{x}"}
george - 0
george - 1
george - 2
george - 3
george - 4
=> 5