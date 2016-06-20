class List
  def initialize
    @tasks = []
  end

  def push(task)
    @tasks << task
  end

  def show_tasks
    @tasks.each_with_index { |task, index| puts "#{index + 1}) #{task.title}" }
  end

end


class Task
  attr_reader :title
  def initialize(title)
    @title = title
  end
end


list = List.new
shopping = Task.new("Go Shopping")
rei = Task.new("Go To REI")
bills = Task.new("Pay Bills")

list.push shopping
list.push rei
list.push bills

list.show_tasks
