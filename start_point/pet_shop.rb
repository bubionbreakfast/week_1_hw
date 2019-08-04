def pet_shop_name(name)
  return name[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(cash, total_cash)
  return cash[:admin][:total_cash] += 10
end

def add_or_remove_cash(cash, total_cash)
  return cash[:admin][:total_cash] -= 10
end

def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(sold, pets_sold)
  return sold[:admin][:pets_sold] += 2
end

def stock_count(count)
  return count[:pets].count
end

def pets_by_breed(pets_hash, breed_type)
  pets = []
for pet in pets_hash[:pets]
  if pet[:breed] == breed_type
    pets.push(pet)
    end
  end
  return pets
end

def find_pet_by_name(pets_hash, pet_name)
  pets = []
  for pet in pets_hash[:pets]
    if pet[:name] == pet_name
      return pet
    else
      return nil
    end
  end
end

def add_pet_to_stock(pets_hash, add_pets_hash)
  pets_hash[:pets] << add_pets_hash
end

def customer_cash(cash)
  return cash[:cash]
end

def remove_customer_cash(customer, cash_to_remove)
   customer[:cash] = customer[:cash] - cash_to_remove
end

def customer_pet_count(count)
  count[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet_cost)
  if customer[:cash] > new_pet_cost[:price]
    return true
    end
  else
    return false
end

def sell_pet_to_customer(pet_shop_hash, pet, customer)
  p pet
  p customer
  p pet_shop_hash[:pets]
  customer[:pets] << pet_shop_hash[:pets][3]
  p customer[:pets]
  p customer[:pets].length
  return customer[:pets].length

end
