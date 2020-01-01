require 'pry'

def find_item_by_name_in_collection(name, collection)
a = 0 
  while a < collection.count do 
    if collection[a][:item] == name  
    return collection[a]
    end 
  a += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  a = 0 
  result = []
    while a < cart.size do
    item_info = cart[a]
    item = cart[a][:item]
    search = find_item_by_name_in_collection(item,result)
      if !search
      item_info[:count] = 1  
      result << item_info 
      else
      item_info[:count] += 1
      result << item_info
      end
      a += 1
     end
  result
 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  # Returns a new Array. Its members will be a mix of the item Hashes and, where applicable, the "ITEM W/COUPON" Hash. 
  # REMEMBER: This method **should** update cart
  a = 0 
  result = []
  while a < cart.size do 
  item_info = cart[a]
  item = cart[a][:item]
  coupons_search = find_item_by_name_in_collection(item, coupons)
  
    if coupons_search
    count_diff = cart[a][:count] - coupons_search[:num]
    w_coupon = {:item => "#{item} W/COUPON", 
    :price => coupons_search[:cost]/2     
    }
     
      result << item_info   
  
      
    end
a += 1
#binding.pry
end 
  
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
