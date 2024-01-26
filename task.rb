class Task
  attr_reader :name, :done

  def initialize(name)
    @name = name
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end

end