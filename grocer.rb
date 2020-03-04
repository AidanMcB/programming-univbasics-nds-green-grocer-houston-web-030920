def increment_count_of_item (cart, item_name)

end

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and output
 i = 0 
 while i < collection.length do 
  if collection[i][:item] == name 
    return collection[i]
  end
  i += 1 
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart =[] 
  i = 0                             #start a counter
  while i < cart.length do          #iterate through the cart   
      new_cart_item = find_item_by_name_in_collection(cart[i][:item], new_cart)  #returns item OR nil
    if new_cart_item                                                              #if new_cart_item != nil
      new_cart_item[:count] += 1            #value of count key +1
    else 
      new_cart_item = {
      :item => cart[i][:item],
      :price => cart[i][:price],
      :clearance => cart[i][:clearance],
      :count => 1
      }
      new_cart << new_cart_item 
    end 
    i += 1                          
  end
  new_cart
end
#item: [{:item => "Avocado, :price => 3.00, :clearance =>, counter => 3}]


def apply_coupons(cart, coupons)
  #cart = array collection of item hashes 
  #coupons = 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers


end
