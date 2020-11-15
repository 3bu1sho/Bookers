  
class BooksController < ApplicationController
  
    def index
      @book = Book.new
      @books = Book.all
    end
    
    def create
    book = Book.new(book_params)
    book.save
    if book.save
    flash[:notice] = "form,successfully"
        redirect_to book_path(book.id)
    else
    flash[:notice] = "error. please input any key"
        redirect_to books_path
    end
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
    book = Book.new(book_params)
    book.update(book_params)
    if book.update(book_params)
    flash[:notice] = "form,successfully"
        redirect_to book_path(book.id)
    else
    flash[:notice] = "error. please input any key"
            redirect_to edit_book_path

    end
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