class Api::CategoriesController < ApplicationController
  before_action :authenticate_user

  def index
    @categories = Category.all
    render "index.json.jbuilder"
  end

  def create
  end

end
