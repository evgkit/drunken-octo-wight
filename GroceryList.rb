def create_list(name)
  {"name" => name, "items" => Array.new}
end

def add_list_item(name, quantity)
  {"name" => name, "quantity" => quantity}
end

def print_list(list)
  list["items"].each do |item|
    puts "Item: #{item["name"]}, Quantity: #{item["quantity"].to_s}"
  end
end

list = create_list("new_list")

list["items"].push(add_list_item("Milk", 1))
list["items"].push(add_list_item("Eggs", 10))
list["items"].push(add_list_item("Bread", 5))

print_list(list)
