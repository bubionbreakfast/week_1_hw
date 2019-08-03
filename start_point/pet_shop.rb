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
    end
  end
end
