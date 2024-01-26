class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    while @running
      choice = actions
      dispatch(choice)
    end
  end

  private

  def actions
    puts "MENU"
    puts "-------------"
    puts "1- Display all tasks"
    puts "2- Add a task"
    puts "3- Mark as done"
    puts "4- Delete task"
    puts "9- Stop program"
    puts "----------------\n"

    gets.chomp.to_i
  end

  def dispatch(choice)
    case choice
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.delete
    when 9 then @running = false
    end

  end
end