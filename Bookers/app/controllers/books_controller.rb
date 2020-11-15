class BooksController < ApplicationController
  
    def index
      @book = Book.new
      @books = Book.all
    end
    
    def create
    @book = Book.new(book_params)
    @book.save
    if @book.save
    flash[:notice] = "form,successfully"
    end
    redirect_to books_path
    end
    
    def show
    @book = Book.find(params[:id])
    end
  
    def new
    @book = Book.new
    end

    def edit
    @book = Book.find(params[:id])
    end
    
    def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    if @book.update(book_params)
    flash[:notice] = "form,successfully"
    end
    redirect_to '/books'
    end
    
    def destroy
    @book = Book.find(params[:id])
    @book.destroy
    if @book.destroy
    flash[:notice] = "form,successfully"
    end
    redirect_to '/books'
    end
  
    private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end