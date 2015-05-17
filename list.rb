require "./item"

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