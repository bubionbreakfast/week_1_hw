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
  # total_pets_by_breed = 0
  pets = []
  # p pets_hash[:pets][0][:breed]
  # p pets_hash[:pets].count

  for pet in pets_hash[:pets]
    if pet[:breed] == breed_type
      pets.push(pet)
      # p total_pets.length
      # p pet[:breed]
      # total_pets_by_breed = total_pets_by_breed + 1

      # return total_pets_by_breed.to_i
  end

end
# return total_pets_by_breed
p pets
return pets

end
