# Diary test file

require 'Diary'

RSpec.describe Diary do
            
    # Returns whole string if 5 words or less
    context "Short string entered" 
        it 'If string is less than 5 words long, return full string' do
            diary = Diary.new
            expect(diary.make_snippet("This is a string")).to eq "This is a string"
        end

    # Puts out fail message if string is empty
    it 'If no entries found, returns "No entries"' do
        diary = Diary.new
        expect{diary.make_snippet('')}.to raise_error "No entries"
    end
end
