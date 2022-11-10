=begin

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

    Brief
    As a user
    So that I can keep track of my tasks
    I want to check if a text includes the string #TODO.

    User will add text strings
    Text strings are stored in an array
    Check if a string includes '#TODO'
    If it does, add to the array
    If it doesn't, ignore it/add to another array
    

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

    name = todo_check
    parameter = '#TODO'
    adds string given to array
    returns true/false to console


3. Create Examples as Tests
Make a list of examples of what the method will take and return.


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

=end

class ToDo 

    def initialize
        @todo_storage = []
        @other_storage = []
    end

    def todo_check(string)
        # if string is blank, raise error
        arr = string.split 
        if arr.length == 0
            raise "No string entered."
        end

        # If string includes keyword, add it to array and return true
        if string.include?("#TODO")
            @todo_storage << string
            return true
        end

        # If string is not blank but does not contain keyword, add to other array and return false
        if string.include?("#TODO") == false
            @other_storage << string
            return false
        end
    end
end