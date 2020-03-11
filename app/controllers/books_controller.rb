class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@book=Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def top
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to books_path
  end

  def update
  	book = Blog.find(params[:id])
    blog.update(book_params)
    redirect_to book_path(blog)
  end

  def destroy
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
