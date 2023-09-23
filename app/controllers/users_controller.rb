class UsersController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to "/users/[:current_user.id]"
    # if @book.save
    # flash[:notice] = "You have created book successfully."
    # redirect_to user_path(@user.id)
    # else
    # @books = Book.all
    # render :user_path
    # end
  end

  def show
    @book = Book.new
    @books = Book.all
  end

  def index
    @user = User.new
    @users = User.all
    # @book = Book.new
    # @books = Book.all
  end



  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
