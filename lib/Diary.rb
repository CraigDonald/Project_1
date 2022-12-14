# Diary code file

#Design

#A method called make_snippet that takes a #string as an argument and returns the first #five words and then a '...' if there are #more than that.

class Diary
    def make_snippet(string)
        arr = string.split

        if arr.length == 0
            raise "No string entered."
        end

        if arr.length <= 5
            return string
        end

        if arr.length > 5
            return arr[0..4].join(" ") + " ..."
        end
    end
end