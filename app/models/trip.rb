class Trip < ApplicationRecord
  has_many :user_trips
  has_many :users, through: :user_trips
  has_many :expenses
  has_many :itineraries
  belongs_to :planner, class_name: "User", foreign_key: "user_id" 
end
