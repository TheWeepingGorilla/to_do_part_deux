class List

  def initialize(name)
    @name = name
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(description_of_task_to_remove)
    @tasks.each do |each_task|
      if each_task.description == description_of_task_to_remove
        @tasks.delete(each_task)
      end
    end
  end

  def tasks
    return @tasks
  end

  def name
    return @name
  end

end
