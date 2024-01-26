require_relative "view"
require_relative "task"

class Controller
  def initialize(repository)
    @repo = repository
    @view = View.new
  end

  def list
    # fetch from REPOSITORY
    tasks = @repo.all
    # send tasks to be displayed in VIEW
    @view.display_all(tasks)
  end

  def create
    # get name of the new TASK from the VIEW
    name = @view.ask_for_name
    # create new TASK instance
    task = Task.new(name)
    # add TASK instance to the repository
    @repo.add(task)
  end

  def mark_as_done
    # ask the user for the task
    index = @view.ask_for_task("mark as done") - 1
    # find the specific task in the repo
    task = @repo.find(index)
    # mark the task as done
    task.mark_as_done!
  end

  def delete
    index = @view.ask_for_task("delete") - 1
    @repo.remove(index)
  end
end