class BooksController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def new
    @new_book = Book.new
  end


  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id

    if @book.save
      flash[:notice] ="You have created book successfully."
      redirect_to book_path(@book.id)
    else
        @user = current_user
        @books =Book.all
        render :index
    end
  end

  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    @user = current_user
    @users = User.find(@book.user[:id])
    @book_comment = BookComment.new
  end

  def edit
    @book = Book.find(params[:id])
    unless @book.user == current_user
      redirect_to books_path
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      flash[:notice] ="You have updated book successfully."
      redirect_to book_path
    else
<<<<<<< HEAD
      render :edit
=======
      
>>>>>>> da1d420 (ヘッダーリンク記述(link to ~ end に変更)
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:image,:title,:body)
  end

  def correct_user
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to(books_path) unless @user == current_user
  end

end
