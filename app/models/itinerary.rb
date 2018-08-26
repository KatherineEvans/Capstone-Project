class Itinerary < ApplicationRecord
  belongs_to :trip
  has_many :expenses
  has_many :users, through: :user_trips

  def friendly_time
    time.strftime("%B %e, %Y")
  end
end
