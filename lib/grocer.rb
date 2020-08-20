require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |product|
    if product[:item] == name
      return product
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  #pp cart
  final_cart = []
  current_index = 0
  count = 1
  pp cart.sort_by { |product| product[:item] }
  while current_index + 1 < cart.length do 
    p "current index: #{current_index} and current_item #{cart[current_index]}"
    if cart[current_index][:item] == cart[current_index + 1][:item]
      current_index += 1
      count += 1 
    else
      item = cart[current_index]
      item_plus_count = item[:count] = count
      final_cart << item_plus_count
      count = 1
      current_index += 1
    end
  end
  item = cart[current_index]
  item_plus_count = item[:count] = count
  final_cart << item_plus_count
  pp final_cart
end


  