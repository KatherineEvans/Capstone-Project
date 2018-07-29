# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name: "Katherine", last_name: "Evans", email: "katherine@email.com", password: "password")
User.create!(first_name: "Bailey", last_name: "Remec", email: "bailey@email.com", password: "password")
User.create!(first_name: "Mallory", last_name: "McShane", email: "mallory@email.com", password: "password")
User.create!(first_name: "Russell", last_name: "Gonzalez", email: "russell@email.com", password: "password")

Trip.create!(country: "United States", state: "Utah", city: "Brian Head", postal_code: "84719", start_date: Date.new(2017, 07, 06), end_date: Date.new(2017, 07, 13), user_id: 1)
Trip.create!(country: "Spain", state: "Province of Seville", city: "Seville", postal_code: "44273", start_date: Date.new(2019, 04, 01), end_date: Date.new(2019, 04, 14), user_id: 2)
Trip.create!(country: "United States", state: "Wisconsin", city: "Appleton", postal_code: "54911", start_date: Date.new(2018, 8, 02), end_date: Date.new(2018, 8, 05), user_id: 2)
Trip.create!(country: "Iceland", city: "Reykjavik", postal_code: "101", start_date: Date.new(2016, 12, 12), end_date: Date.new(2016, 12, 22), user_id: 1)

Category.create!(name: "Travel (Airfare, Baggage Fees, Gas, Rental Car Expenses, Public Transit, etc.")
Category.create!(name: "Accomidations (Hotel, Airbnb, VRBO, Hostel, etc.")
Category.create!(name: "Food & Beverage")
Category.create!(name: "Entertainment (Excursions, Event Tickets, Passes/Fees")
Category.create!(name: "Shopping")
Category.create!(name: "Misc. Expenses")

Itinerary.create!(trip_id: 4, description: "Scuba Diving in Silfra Fissure", time: DateTime.new(2016, 12, 18, 9, 00))
Itinerary.create!(trip_id: 4, description: "Break for Lunch - Kaldi Bar", time: DateTime.new(2016, 12, 18, 11, 30))
Itinerary.create!(trip_id: 4, description: "Hiking in Thingvellir National Park", time: DateTime.new(2016, 12, 18, 13, 00))
Itinerary.create!(trip_id: 4, description: "Dinner - Bergsson Mathus", time: DateTime.new(2016, 12, 18, 18, 00))
Itinerary.create!(trip_id: 4, description: "Drinks - Micro Bar", time: DateTime.new(2016, 12, 18, 20, 45))

Expense.create!(amount: 450, description: "Registration: Scuba Diving in Silfra", category_id: 4, user_id: 1, trip_id: 4, expense_type: "1", date: Date.new(2016,12,18), itinerary_id: 1)
Expense.create!(amount: 50.23, description: "Gas Charge", category_id: 1, user_id: 3, trip_id: 4, expense_type: "2", date: Date.new(2016,12,18))
Expense.create!(amount: 32.47, description: "Lunch at Kaldi Bar", category_id: 3, user_id: 1, trip_id: 4, expense_type: "1", date: Date.new(2016,12,18), itinerary_id: 2)
Expense.create!(amount: 89.73, description: "Dinner at Bergsson Mathus", category_id: 3, user_id: 3, trip_id: 4, expense_type: "2", date: Date.new(2016,12,18), itinerary_id: 4)
Expense.create!(amount: 17.22, description: "Drinks!", category_id: 3, user_id: 1, trip_id: 4, expense_type: "2", date: Date.new(2016,12,18), itinerary_id: 5)
Expense.create!(amount: 4.68, description: "Bandaids", category_id: 6, user_id: 3, trip_id: 4, expense_type: "1", date: Date.new(2016,12,18))

UserTrip.create!(user_id: 1, trip_id: 1, planner: true)
UserTrip.create!(user_id: 1, trip_id: 4, planner: true)
UserTrip.create!(user_id: 1, trip_id: 3, planner: false)
UserTrip.create!(user_id: 1, trip_id: 2, planner: false)
UserTrip.create!(user_id: 2, trip_id: 2, planner: true)
UserTrip.create!(user_id: 2, trip_id: 3, planner: true)
UserTrip.create!(user_id: 2, trip_id: 1, planner: false)
UserTrip.create!(user_id: 3, trip_id: 2, planner: false)
UserTrip.create!(user_id: 3, trip_id: 1, planner: false)
UserTrip.create!(user_id: 3, trip_id: 4, planner: false)
UserTrip.create!(user_id: 4, trip_id: 1, planner: false)
UserTrip.create!(user_id: 4, trip_id: 2, planner: false)
