require "./item"

# List of Items

class List
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(name)
    items.push(Item.new(name))
  end

  def remove_item(name)
    items.each do |item|
      items.delete(item) if item.name == name
    end
  end

end

list = List.new("Special")
list.add_item("Fuse")
list.add_item("Spice")
list.add_item("Sword")

puts list.inspect
list.remove_item("Spice")
puts list.inspect