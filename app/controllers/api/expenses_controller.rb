class Api::ExpensesController < ApplicationController
  before_action :authenticate_user

  def index
    @expenses = Expense.where(user_id: current_user.id)
    render "index.json.jbuilder"
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
