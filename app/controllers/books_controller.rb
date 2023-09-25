class BooksController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @books = Book.all

  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to user_path(current_user.id)
    else
    @user = User.find(current_user.id)
    @books = Book.all
      render :index
      

    end
  end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
  end
  
  def edit
    @user = User.find(current_user.id)
    @book = Book.find(params[:id])
    @book.user_id = current_user.id

  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_path(current_user.id)
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :profile_image)
  end

end
