# Diary test file

require 'Diary'

RSpec.describe Diary do
            
    # Returns whole string if 5 words or less
    context "Short string entered" 
        it 'If string is less than 5 words long, return full string' do
            diary = Diary.new
            expect(diary.make_snippet("This is a string")).to eq "This is a string"
        end
    
    context "Long string entered"
        it "String longer than 5 words, returns string then ..." do
            diary = Diary.new
            expect(diary.make_snippet("This is a longer string than before")).to eq "This is a longer string ..."
        end
    
end
