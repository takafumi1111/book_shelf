class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]  
  
  def index
    @books = Book.all
  end
  
  def show
   
  end

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  
  def edit
    #URLで指定した番号のモデルを取得する
    
  end
  
  def update
    #URLで指定した番号のモデルを更新する
   
    @book.update(book_params)
    redirect_to books_path
  end
  
  def destroy
    @book.destroy
    redirect_to books_path
  end
  
  
  # ここから下はprivateだよ
  private
  
  def set_book
    @book = Book.find(params[:id])
  end  
  
  def book_params
    params.require(:book).permit(
      :name, :price, :publish, :publish_date
    )
  end
  
  
end


