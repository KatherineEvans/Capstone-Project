json.expenses @expenses.each do |expense|
  json.partial! "expenses.json.jbuilder", expense: expense
end