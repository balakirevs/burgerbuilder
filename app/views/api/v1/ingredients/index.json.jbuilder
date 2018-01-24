json.ingredients @ingredients do |ingredient|
  json.(ingredient, :bacon, :cheese, :meat, :salad)
end