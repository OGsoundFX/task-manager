class View
  def display_all(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}- #{task.name} / #{task.done? ? 'done' : 'You better get to it!'}"
    end
  end

  def ask_for_name
    puts "What task would you like to add?"
    gets.chomp
  end

  def ask_for_task(action)
    puts "Which task do you want to #{action}?"
    gets.chomp.to_i
  end

end