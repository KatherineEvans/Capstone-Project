class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  belongs_to :category
  belongs_to :itinerary
end
