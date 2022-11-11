# Tests file

require 'to_do'

RSpec.describe ToDo do
    context "Given a string"
        it "Has something entered" do
            example = ToDo.new
                expect{example.todo_check("")}.to raise_error "No string entered."
        end
    
    
    context "Given a string"
        it "Has a string containing '#TODO'" do
            example2 = ToDo.new
                expect(example2.todo_check("#TODO Check heating is off")).to eq true
                expect(example2.todo_check("Check cooker is off #TODO")).to eq true
                expect(example2.todo_check("Check this #TODO later.")).to eq true
        end
    
    context "Given a string"
        it "Has a string, but does not contain '#TODO'" do
            example3 = ToDo.new
                expect(example3.todo_check("Get washing in")).to eq false
                expect(example3.todo_check("Call friend later")).to eq false
                expect(example3.todo_check("Ask to finish early")).to eq false
        end
end