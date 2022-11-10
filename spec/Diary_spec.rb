# Diary test file

require 'Diary'

RSpec.describe Diary do
            
    # Returns whole string if 5 words or less
    context "Short string entered" 
        it 'If string is less than 5 words long, return full string' do
            diary = Diary.new
            expect(diary.make_snippet("This is a string")).to eq "This is a string"
            expect(diary.make_snippet("Also a string")).to eq "Also a string"
            expect(diary.make_snippet("String")).to eq "String"
        end
    
    context "Long string entered"
        it "String longer than 5 words, returns string then ..." do
            diary = Diary.new
            expect(diary.make_snippet("This is a longer string than before")).to eq "This is a longer string ..."
        end
    
    context "No string entered"
        it "Blank string added, so can't be stripped, returns error" do
            diary = Diary.new
            expect{diary.make_snippet("")}.to raise_error "No string entered."
        end
end
