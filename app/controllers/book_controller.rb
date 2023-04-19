class BookController < ApplicationController

  def index
    # active record query to see all the books in the db, stored in an instance variable
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    # Book.find(1)
  end
end
