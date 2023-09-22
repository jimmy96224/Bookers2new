class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new
    @book.user_id = current_user.id
    @book.save
    redirect_to users_path
  end

  def show
  end

  # private

  # def book_params
  #   params.require(:book).permit(:title, :opinion)
  # end

end
