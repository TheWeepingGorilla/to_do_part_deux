require './lib/task'
require './lib/list'

@list_of_lists = []
@list_selected

def add_list
  puts ("Please name your list:")
  list_name = gets.chomp
  @list_of_lists << List.new(list_name)
  puts "You have added #{@list_of_lists[-1].name} to your list of lists."
  puts "\n"
end

def list_lists
  puts "Here are your Lists:"
  @list_of_lists.each do |list|
    puts "#{list.name}"
  end
  puts "\n"
end

def remove_list
  puts ("Please enter name of list to remove:")
  list_to_remove = gets.chomp
  @list_of_lists.each do |each_list|
    if each_list.name == list_to_remove
      @list_of_lists.delete(each_list)
    end
  end
end

def select_list
  puts ("Here are your current lists: ")
  puts list_lists
  puts ("Please enter name of list to select.")
  list_to_select = gets.chomp
  @list_of_lists.each do |each_list|
    if each_list.name == list_to_select
    @list_selected = each_list
    puts "Your currently selected list is #{@list_selected.name}"
    end
  end
end

def add_task
  puts ("Task to add:")
  task_to_add = gets.chomp
  new_task = Task.new(task_to_add)
  @list_selected.add_task(new_task)
  puts "You've added #{task_to_add} to your list."
end

def show_tasks
  puts("Here are your tasks for the #{@list_selected.name} list:")
  @list_selected.tasks.each do |each_task|
    puts each_task.description
  end
end

def remove_task
  puts("Please type name of task to remove.")
  task_to_remove = gets.chomp
  @list_selected.remove_task(task_to_remove)
  puts "You've removed #{task_to_remove} from your list."
end

def main_menu
  loop do
    p "Press 'a' to add list or 'l' to see current To-Do lists."
    p "Press 's' to select list to add or remove tasks from."
    p "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_list
    elsif main_choice == 'l'
      list_lists
    #elsif main_choice == 's'
      #select_list
    elsif main_choice == 'x'
      p "Good riddance"
      exit
      p "That was an invalid input."
    end
  end
end

main_menu






