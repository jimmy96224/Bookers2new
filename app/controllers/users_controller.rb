class UsersController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to user_path(current_user.id)
  end

  def show
    @book = Book.new
    @user = User.find(current_user.id)
    @books = @user.books
  end

  def index
    @user = User.find(current_user.id)
    @users = User.all
    @book = Book.new
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(current_user.id)
    else
    render :edit
    end
  end



  def edit
    @user = User.find(current_user.id)
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
  

end
