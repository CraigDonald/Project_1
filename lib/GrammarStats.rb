class GrammarStats

    attr_accessor :passed, :total, :correct
  def initialize
    @passed = 0
    @total = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "Not a sentence" if text.empty?
      first_letter_is_uppercase  = text[0] == text [0].upcase
      last_character_is_punctuated = text[-1] == "." || text[-1] == "?" || text[-1] == "!"
      if first_letter_is_uppercase && last_character_is_punctuated
        @passed += 1
        @total += 1
        return true
      else
        @total += 1
        return false
      end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    @correct =  @passed.to_f / @total.to_f * 100.00
    intcorrect = @correct.to_i
    puts intcorrect
  end
end

gs = GrammarStats.new
#p gs
#p gs.passed
#p gs.total
gs.check("This should pass!")
gs.check("This should pass!")
gs.check("This should pass!")
#p gs.passed
#p gs.total
gs.check("this shouldn't pass")
#p gs.passed
#p gs.total

gs.percentage_good
