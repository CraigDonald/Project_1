require 'music_challenge'

RSpec.describe Music do

    it "raises error 'No music to add' if blank string added" do
        music = Music.new
        expect{music.add("")}.to raise_error "No music to add"
    end

    it "raises error 'already added' if song already exists" do
        music = Music.new
        music.add("Wanna be")
        expect{music.add("Wanna be")}.to raise_error "Already added"
    end

    it "adds song to list" do
        music = Music.new
        expect(music.add("Crashed the wedding")).to eq "Crashed the wedding added to music list"
    end

    it "Music list prints array of songs" do
        music = Music.new
        music.add("Wanna Be")
        music.add("Crashed the wedding")
        expect(music.view_list).to eq ["Wanna Be", "Crashed the wedding"]
    end
end