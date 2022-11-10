# Count words tests

#Design

#A method called count_words that takes a string as an #argument and returns the number of words in that string.

# Return number of words in a string

require 'count_words'

RSpec.describe CountWords do
    context "Given a string"
        it "If string is populated, return number of words in that string" do
            count = CountWords.new
            expect(count.count_words("String goes here")).to eq 3
        end
    
end