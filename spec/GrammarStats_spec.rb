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
    it "Returns percentage" do
        gs = GrammarStats.new
        gs.check("this shouldn't pass")
        gs.check("This should pass!")
        expect(gs.percentage_good).to eq 50
    end
end