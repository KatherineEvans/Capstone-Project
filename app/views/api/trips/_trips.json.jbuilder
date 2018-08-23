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

json.expenses trip.expenses.each do |expense|
  json.id expense.id
  json.amount expense.amount
  json.category_name expense.category.name
  json.description expense.description
  json.expense_type expense.expense_type
end

json.group_expenses trip.group_expenses.order("category_id asc").each do |group_expense|
  json.group_id group_expense.id
  json.group_amount group_expense.amount
  json.group_category_name group_expense.category.name 
  json.group_description group_expense.description
  json.group_expense_type group_expense.expense_type
end

json.personal_expenses trip.personal_expenses.order("category_id asc").each do |personal_expense|
  json.personal_id personal_expense.id
  json.personal_amount personal_expense.amount
  json.personal_category_name personal_expense.category.name 
  json.personal_description personal_expense.description
  json.personal_expense_type personal_expense.expense_type
end

json.current_user_personal_expenses trip.personal_expenses.where(user_id: current_user.id) if current_user
json.current_user_group_expenses trip.group_expenses.where(user_id: current_user.id) if current_user