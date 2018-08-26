class Trip < ApplicationRecord
  has_many :user_trips
  has_many :users, through: :user_trips
  has_many :expenses
  has_many :itineraries
  belongs_to :planner, class_name: "User", foreign_key: "user_id" 


  def friendly_start_date
    start_date.strftime("%B %e, %Y")
  end

  def friendly_end_date
    end_date.strftime("%B %e, %Y")
  end

  def personal_expenses
    expenses.where(expense_type: "Personal")
  end

  def group_expenses
    expenses.where(expense_type: "Group")
  end

end
