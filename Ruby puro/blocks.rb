def foo(numbers, &block)
    if block_given?
      numbers.each do |key, value|
        block.call(key, value)
      end
    end
end
  
  numbers = { 2 => 2, 3 => 3, 4 => 4 }
  
foo(numbers) do |key, value|
   puts "#{key} * #{value} = #{key * value}"
   puts "#{key} + #{value} = #{key + value}"
   puts "---"
end