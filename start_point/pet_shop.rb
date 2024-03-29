def pet_shop_name(name)
  return name[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
   pet_shop[:admin][:total_cash] += amount
end


def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(sold, pets_sold)
  return sold[:admin][:pets_sold] += pets_sold
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

def find_pet_by_name(pet_shop, pet_name)
  match = nil
  for pet in pet_shop[:pets]
    match = pet if(pet[:name] == pet_name)
  end
  return match
end

def remove_pet_by_name(pet_shop, pet_name)
  pet_to_delete = find_pet_by_name(pet_shop, pet_name)
  pet_shop[:pets].delete(pet_to_delete)
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

def customer_can_afford_pet(customer, pet)
  return customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  return if (pet == nil)
  return if !(customer_can_afford_pet(customer, pet))

  add_pet_to_customer(customer,pet)
  add_or_remove_cash(pet_shop, pet[:price])
  remove_customer_cash(pet_shop, pet[:price])
  remove_pet_by_name(pet_shop, pet[:name])
  increase_pets_sold(pet_shop, 1)
end
