# Count words code

class CountWords
    def count_words(string)
        array_of_words = string.split
        if array_of_words.length == 0
            raise "That string is blank!"
        end      
        if array_of_words.length > 0
            return array_of_words.length
        end
    end
end