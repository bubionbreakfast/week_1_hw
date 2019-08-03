def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(sum)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(cash, total_cash)
  return @pet_shop[:admin][:total_cash] += 10
end

def add_or_remove_cash(cash, total_cash)
  return @pet_shop[:admin][:total_cash] -= 10
end

def pets_sold(sold)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(sold, pets_sold)
  return @pet_shop[:admin][:pets_sold] += 2
end

def stock_count(count)
  return @pet_shop[:pets].count
end
