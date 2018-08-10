class Api::ExpensesController < ApplicationController
  before_action :authenticate_user

  def index
    @expenses = current_user.expenses
    render "index.json.jbuilder"
  end

  def create
    @expense = Expense.new(
    amount: params["amount"],
    description: params["description"],
    category_id: params["category_id"],
    trip_id: params["trip_id"],
    user_id: current_user.id,
    photo: params["photo"],
    expense_type: params["expense_type"],
    date: params["date"], 
    itinerary_id: params["itinerary_id"]
    )
    if @expense.save
      render "show.json.jbuilder"
    else
      render json: {error: @expense.errors.full_messages}, status: 404
    end
  end

  def show
    @expense = Expense.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @expense = Expense.find_by(id: params[:id])
    @expense.description = params["description"] || @expense.description
    @expense.amount = params["amount"] || @expense.amount
    @expense.photo = params["photo"] || @expense.photo
    @expense.trip_id = params["trip_id"] || @expense.trip_id
    @expense.category_id = params["category_id"] || @expense.category_id
    @expense.user_id = params["user_id"] || @expense.user_id
    @expense.expense_type = params["expense_type"] || @expense.expense_type
    @expense.date = params["date"] || @expense.date
    @expense.itinerary_id = params["itinerary_id"] || @expense.itinerary_id

    if @expense.save
      render "show.json.jbuilder"
    else
      render json: {error: @expense.errors.full_messages}, status: 404
    end
  end

  def destroy
    @expense = Expense.find_by(id: params[:id])
    @expense.destroy
    render json: {message: "This expense has been deleted."}
  end

end
