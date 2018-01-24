if Ingredient.all.count.zero?
  Ingredient.create!(bacon: 0, cheese: 0, meat: 0, salad: 0)
end