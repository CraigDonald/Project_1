=begin
    
    1. Describe the problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

    2. Design the Class Interface

Class = Tasks
Init = takes no args, creates empty array for each initialisation
Methods
    - add(string)
        - takes a string (the task)
        - adds string to array
        - prints "Added [string] to list."
        - if string empty, raises error to advise string empty
------------------

    - print_list
        - print out the tasks from the array as a list of strings
    -- No side effects
------------------

    - remove
        - takes a string (task to be removed)
        - If string matches a string in array
            - remove string
        - If doesn't match
            - Raise error "No task exists"
    -- No side effects
    
    3. Create examples as tests    

Adding - 

task = Tasks.new
expect(task.add("Clean bathroom.")).to eq "Added 'Clean bathroom.' to list."
expect(task.add("Wash dishes.")).to eq "Added 'Wash dishes.' to list."
expect(task.add("")).to raise_error "Nothing added."

Removing - 

task = Tasks.new
expect(task.add("Clean bathroom")).to eq "Added 'Clean bathroom' to list."
expect(task.add("Wash dishes")).to eq "Added 'Wash dishes' to list."
expect(task.add("")).to raise_error "Nothing added."

expect(task.remove("Clean bathroom")).to eq "Removed 'Clean bathroom' from list."
expect(task.remove("Wash dishes")).to eq "Removed 'Wash dishes' from list."
expect(task.remove("")).to raise_error "Nothing removed."
expect(task.remove("Hoover the roof")).to raise_error "Task not found"

    4. Implement the behaviour
=end

class Tasks
    attr_accessor :task_list

    def initialize(task_list = [])
        @task_list = task_list
    end

    def add(string)
        if string.length <1
            raise "Nothing added."
        end

        if string.length >=1
            @task_list << string
            return "Added '#{string}' to list."
        end
    end

    def remove(string)
        if string.length < 1
            raise "Nothing removed."
        end

        if @task_list.include?(string) == false
            raise "Task not found"
        end

        if @task_list.delete_if{|x| x == string}
            return 'Task removed'
        end
    end

    def print_list
        y = @task_list.each{|task| puts task}
        return y
    end
end

tasklist = Tasks.new
tasklist.add("Clean bathroom")
tasklist.add("Clean kitchen")
tasklist.add("Clean loft")
tasklist.print_list
