class UsersController < ApplicationController
  def new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
    flash[:notice] = "You have created book successfully."
    redirect_to user_path(@user.id)
    else
    # @books = Book.all
    # render :index
    end
  end
  
  def show
    @book = Book.new
  end
  
  def index
    @user = User.new
    @users = User.all
  end
  


  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
