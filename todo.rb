class TodoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
    puts "Added task: '#{task}'"
  end

  def remove_task(index)
    if index.between?(0, @tasks.length - 1)
      removed_task = @tasks.delete_at(index)
      puts "Removed task: '#{removed_task}'"
    else
      puts "Invalid task number."
    end
  end

  def view_tasks
    if @tasks.empty?
      puts "No tasks in the list."
    else
      puts "Your To-Do List:"
      @tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end
  end
end

def main
  todo_list = TodoList.new

  loop do
    puts "\nOptions: add, remove, view, exit"
    print "Enter a command: "
    command = gets.chomp.downcase

    case command
    when 'add'
      print "Enter a task: "
      task = gets.chomp
      todo_list.add_task(task)
    when 'remove'
      print "Enter the task number to remove: "
      index = gets.chomp.to_i - 1
      todo_list.remove_task(index)
    when 'view'
      todo_list.view_tasks
    when 'exit'
      puts "Exiting the To-Do List application."
      break
    else
      puts "Invalid command. Please try again."
    end
  end
end

main
