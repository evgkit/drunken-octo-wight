require "./item"

# List of Items

class List
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end
end

list = List.new("Special")
item = Item.new("Spice")

puts list.inspect
puts item.inspect

puts item
item.mark_complete!
puts item
item.mark_incomplete!
puts item