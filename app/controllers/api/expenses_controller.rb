class Api::ExpensesController < ApplicationController
  before_action :authenticate_user

  def index
    @expenses = current_user.expenses
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
