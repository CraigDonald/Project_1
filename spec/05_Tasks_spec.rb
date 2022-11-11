require 'Tasks'

RSpec.describe Tasks do

    it "Returns error if string is empty" do
        tasklist = Tasks.new
        expect{tasklist.add("")}.to raise_error "Nothing added."
    end

    it "Returns confirmation and adds to array" do
        tasklist = Tasks.new
        expect(tasklist.add("Clean bathroom")).to eq "Added 'Clean bathroom' to list."
        expect(tasklist.add("Wash dishes")).to eq "Added 'Wash dishes' to list."
    end

    it "Removes string from list" do
        tasklist = Tasks.new
        tasklist.add("Clean bathroom")
        expect(tasklist.remove("Clean bathroom")).to eq "Task removed"
    end

    it "Returns error if string doesn't exist" do
        tasklist = Tasks.new
        tasklist.add("Clean Bathroom")
        expect{tasklist.remove("Wash dishes")}.to raise_error "Task not found"
    end

    it "Returns error if string is empty" do
        tasklist = Tasks.new
        expect{tasklist.remove("")}.to raise_error "Nothing removed."
    end

    it "Returns list of tasks" do
        tasklist = Tasks.new
        tasklist.add("Clean bathroom")
        tasklist.add("Clean kitchen")
        tasklist.add("Clean loft")
        expect(tasklist.print_list).to eq ["Clean bathroom", "Clean kitchen", "Clean loft"]
    end
end