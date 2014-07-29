require 'rspec'
require 'list'
require 'task'

describe "List" do
  it "creates a list" do
    test_list = List.new("House Chores")
    test_list.should be_an_instance_of List
  end
  it "returns list name when asked" do
    test_list = List.new("House Chores")
    test_list.name.should eq("House Chores")
  end
  it "adds tasks to a list" do
    test_list = List.new("house Chores")
    test_task = Task.new("Sweep the floor")
    test_list.add_task(test_task)
    test_list.tasks[-1].description.should eq("Sweep the floor")
  end
  it "removes tasks from a list" do
    test_list = List.new("house Chores")
    test_task = Task.new("Sweep the floor")
    test_list.add_task(test_task)
    test_task_two = Task.new("Feed the dog")
    test_list.add_task(test_task_two)
    test_list.remove_task("Feed the dog")
    test_list.tasks.length.should eq(1)
  end
end

describe "Task" do
  it "creates a task" do
    test_task = Task.new("Sweep the floor")
    test_task.should be_an_instance_of Task
  end
  it "returns a description when asked" do
    test_task = Task.new("Sweep the floor")
    test_task.description.should eq("Sweep the floor")
  end
end

