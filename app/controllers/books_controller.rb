class BooksController < ApplicationController
include BooksHelper
 
 def index
 
  @books = Book.all

 end

 
 def show

  @book = Book.find(params[:id])

 end

 
 def new

  @book = Book.new

 end

 
 def create

 @book = Book.new(book_params)
 @book.save

 redirect_to book_path(@book)

 end


 def destroy

  @book = Book.destroy(params[:id])
  redirect_to "/books"
  flash.notice = "Book: '#{@book.title}' Deleted!"

 end

 
 def edit
  
  @book = Book.find(params[:id])

 end

 
 def update
  
  @book = Book.find(params[:id])
  @book.update(book_params)

  redirect_to book_path(@book)
  flash.notice = "Book: '#{@book.title}' Updated!"

 end
 

end
