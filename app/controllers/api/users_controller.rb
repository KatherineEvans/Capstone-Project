class Api::UsersController < ApplicationController
  before_action :authenticate_user

  def index
    @users = User.all
    @trips = current_user.trips
    render "index.json.jbuilder"
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params["first_name"] || @user.first_name
    @user.last_name = params["last_name"] || @user.last_name
    @user.phone = params["phone"] || @user.phone
    @user.email = params["email"] || @user.email
    @user.password_digest = params["password_digest"] || @user.password_digest
    @user.password_confirmation = params["password_confirmation"] || @user.password_confirmation
    @user.user_photo = params["user_photo"] || @user.user_photo
    @user.bio = params["bio"] || @user.bio

    if @user.save
      render "show.json.jbuilder"
    else
      render json: {error: @user.errors.full_messages}, status: 404
    end
  end

  def destroy
  end

end
