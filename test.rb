require_relative "task"
require_relative "repository"

laundry = Task.new("laundry")
cleaning = Task.new("cleaning")

repo = Repository.new

repo.add(laundry)
repo.add(cleaning)

puts 

repo.all.each do |task|
  p task.name
end
