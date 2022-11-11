def get_most_common_letter(text)
  counter = Hash.new(0)
  p "Counter at start is #{counter}"
  text2 = text.gsub(/\p{^Alnum}/, '')
  text2.chars.each do |char|
    counter[char] += 1
    #p counter
  end
  arr = counter.to_a
  #p arr
  arr2 = arr.sort_by { |k, v| v }
  #p arr2
  arr2[-1][0]
end

p get_most_common_letter("cool book")
p get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"