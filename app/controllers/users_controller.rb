class UsersController < ApplicationController
  def index
    @books = book.find(params[:user_id])
 end

  def show
  end

  def edit
  end
end
