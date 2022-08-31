class UsersController < ApplicationController
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @books =@user.books
  end
  
  def index
    @user = current_user
    @users = User.all
    @book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image,:introduction)
  end
  
  def correct_user
    @user = User.find(params[:id])
    if current_user != @user
     redirect_to user_path(@user)
    end
  end

end
