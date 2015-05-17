require "./item"

# List of Items

class List
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(item)
    items.push(Item.new(item))
  end
end

list = List.new("Special")
list.add_item("Fuse")

puts list.inspect