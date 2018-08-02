json.Categories @categories.each do |category|
  json.ID category.id 
  json.Name category.name 
end