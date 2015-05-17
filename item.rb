class Item
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end
end