require "./item"

# List of Items

class List
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(name)
    @items.push(Item.new(name))
  end

  def remove_item(name)
    @items.each do |item|
      @items.delete(item) if item.name == name
    end
  end

  def mark_item(name)
    @items.each do |item|
      if item.name == name
        index = @items.index(item)
        @items[index].mark_complete!
      end
    end
  end

  def print_list(kind = "all")
    puts "#{name} List - #{kind} items"
    puts "-" * 30
    @items.each do |item|
      case kind
        when "all"
          puts item
        when "complete"
          puts item if item.complete?
        when "incomplete"
          puts item unless item.complete?
      end
    end
    puts "\n"
  end

end

list = List.new("Special")
list.add_item("Fuse")
list.add_item("Spice")
list.add_item("Sword")


list.remove_item("Spice")
list.add_item("Troyan")
list.mark_item("Sword")
puts list.print_list
puts list.print_list("complete")
puts list.print_list("incomplete")