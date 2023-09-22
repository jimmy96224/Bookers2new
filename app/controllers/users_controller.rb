class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end
  
  def create
    
  end

  def show
    @book = Book.new(book_params)
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
