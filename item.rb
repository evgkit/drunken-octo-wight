# Something that can be completed or uncompleted switching by flag. Also has a name

class Item
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end

  def mark_complete!
    @complete = true
  end

  def mark_incomplete!
    @complete = false
  end

  def complete?
    @complete
  end

  def to_s
    if complete?
      "[C] #{name}"
    else
      "[I] #{name}"
    end
  end
end