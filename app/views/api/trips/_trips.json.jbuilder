json.id trip.id
json.name trip.name
json.start_date trip.friendly_start_date
json.end_date trip.friendly_end_date
json.country trip.country
json.state trip.state 
json.city trip.city
json.planner trip.planner.full_name
json.image trip.image
json.travelers trip.users

json.expenses trip.expenses.order("date asc").each do |expense|
  json.id expense.id
  json.amount expense.amount
  json.category_name expense.category.name
  json.description expense.description
  json.expense_type expense.expense_type
  json.date expense.date
end

if current_user
  json.current_user_expenses trip.expenses.where(user_id: current_user.id).each do |expense|
    json.id expense.id
    json.amount expense.amount
    json.date expense.date
    json.category_name expense.category.name
    json.date expense.date
    json.description expense.description
  end
end 

json.group_expenses trip.group_expenses.order("category_id asc").each do |group_expense|
  json.group_id group_expense.id
  json.group_amount group_expense.amount
  json.group_date group_expense.date
  json.group_category_name group_expense.category.name 
  json.group_description group_expense.description
  json.group_expense_type group_expense.expense_type
end

json.personal_expenses trip.personal_expenses.order("category_id asc").each do |personal_expense|
  json.personal_id personal_expense.id
  json.personal_amount personal_expense.amount
  json.personal_date personal_expense.date
  json.personal_category_name personal_expense.category.name 
  json.personal_description personal_expense.description
  json.personal_expense_type personal_expense.expense_type
end

if current_user
  json.current_user_personal_expenses trip.personal_expenses.where(user_id: current_user.id).each do |expense|
    json.amount expense.amount
    json.date expense.date
    json.category_name expense.category.name
    json.expense_type expense.expense_type
  end
end

if current_user
  json.current_user_group_expenses trip.group_expenses.where(user_id: current_user.id).each do |expense|
    json.amount expense.amount
    json.date expense.date
    json.category_name expense.category.name
    json.expense_type expense.expense_type
  end
end

json.itineraries trip.itineraries.order("time asc").each do |itinerary|
  json.itinerary_description itinerary.description
  json.itinerary_time itinerary.time
  json.itinerary_photo itinerary.photo
end
