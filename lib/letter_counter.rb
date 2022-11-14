class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new
    most_common = nil
    most_common_count = 0
    #p most_common
    #p most_common_count
    @text.chars.each do |char|
      next unless is_letter?(char) 
      # Checks character is actually a letter, using the def is_letter? section below (removes spaces)
      counter[char] = ((counter[char]).to_i) + 1
      if counter[char] > most_common_count
        most_common = char
        #p most_common
        most_common_count = counter[char]
        #p most_common_count
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")

p counter.calculate_most_common

counter2 = LetterCounter.new("Kings of Convenience")
p counter2.calculate_most_common
# Intended output:
# [2, "i"]