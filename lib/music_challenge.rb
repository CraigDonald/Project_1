=begin
1. Describe the problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the class interface

Class = Music
Init = def initialization(array = [])

Methods 

    - add
        - song name (string)
        - add string to array
        - prints out "Added to music list"
        - if empty string, gives error "No music to add"
        - if string matches existing entry, errors "Already added"
    
    - view_list
        - prints out array
        - if array is blank, prints "Nothing stored"

3. Create examples as tests

music = Music.new
expect(music.add("Wanna be")).to eq "Wanna be to music list"
expect(music.add("Crashed the wedding")).to eq "Crashed the wedding to music list"
expect{music.add("")}.to raise_error "No music to add"
expect{music.add("Wanna be")}.to raise_error "Already added"

music = Music.new
expect{music.view_list}.to raise_error "Nothing stored"

music = Music.new
music.add("Wanna be")
music.add("Crashed the wedding")
expect(music.view_list).to eq ["Wanna be", "Crashed the wedding"]

4. Implement

=end

class Music
    def initialize(songlist = [])
        @songlist = songlist
    end

    def add(song)
        if song.length <1
            raise "No music to add"
        end

        if @songlist.include?(song)
            raise "Already added"
        end

        if song.length >=1
            @songlist << song
            return "#{song} added to music list"
        end
    end

    def view_list
        return @songlist
    end
end