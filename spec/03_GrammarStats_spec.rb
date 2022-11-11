require 'GrammarStats'

RSpec.describe GrammarStats do
    context "check strings pass"
    it "Check string passes" do
        gs = GrammarStats.new
        expect(gs.check("Testing!")).to eq true
        expect(gs.check("Hello?")).to eq true
        expect(gs.check("Stop that.")).to eq true
    end

    context "Check strings fail"
    it "Check string fails" do
        gs = GrammarStats.new
        expect(gs.check("test")).to eq false
        expect(gs.check("help")).to eq false
        expect(gs.check("clues!")).to eq false
    end



    context "Return a percentage"
    xit "Returns percentage" do
        gs = GrammarStats.new
        gs.check("This should pass!")
        gs.check("This should pass!")
        gs.check("This should pass!")
        gs.check("this shouldn't pass")
        p gs.total
        p gs.passed
        expect(gs.percentage_good).to eq 75
    end
end