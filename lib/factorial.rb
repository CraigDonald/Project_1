=begin
def factorial(n)
    product = 1
    p "at the start product is #{product}"
    while n > 1
      p "we multiply #{product} by #{n}"
      product *= n
      n -= 1    
      p "we get #{product}"
    end
    product
  end

puts factorial(5)
=end

# File: factorial.rb
def factorial(n)
  product = 1
  while n > 0
    binding.irb # Mystery new line!
    n -= 1
    product *= n
  end
  product
end

p factorial(5)