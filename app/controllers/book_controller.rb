class BookController < ApplicationController

  def index
    # active record query to see all the books in the db, stored in an instance variable
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    # Book.find(1)  -- active record query
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.create(book_params)
      if @book.valid?
        redirect_to books_path 
      end
  end

  def  update
    @book = Book.find(params[:id])
    @book.update(book_params)
      if @book.valid?
        redirect_to books_path
      end
  end

  def destroy
    @book = Book.find(params[:id])
      if @book.destroy
        redirect_to books_path
      end
  end


  private
  # strong params
  def book_params
    params.require(:book).permit(:name, :read)
  end
end
