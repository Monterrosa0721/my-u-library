class BooksController < ApplicationController
    #GET /books
    def index
        @books = Book.all
    end
    #GET /books/:id
    def show
        @book = Book.find(params[:id])
    end
    #GET "/books/new" new
    def new
        @book = Book.new
    end
    #POST "/books" create
    def create
        @book= Book.new(book_params)

        if @book.save
        redirect_to @book       
        else
            render :new 
        end
    end

    def update
        #UPDATE

        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to @book
        else
            render :edit
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    private

    def book_params
        params.require(:book).permit(:title,:author,
        :published,:genre,:stock)
        end
end
