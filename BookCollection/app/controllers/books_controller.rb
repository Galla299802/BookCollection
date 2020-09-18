class BooksController < ApplicationController
    
      def index
        @books = Book.order(:title)

      end

      def show
            @book = Book.find(params[:id])
      end

      def new
            @book = Book.new()
      end

      def create 
        @book = Book.new(book_params)

        if @book.save
          flash[:notice] = "book '#{@book.title}' created successfully"
          redirect_to(books_path)
        else
          render('new')
        end
      end

      def edit
        @book = Book.find(params[:id])
      end

      def update
        @book = Book.find(params[:id])
    
        if @book.update_attributes(book_params)
          flash[:notice] = "book '#{@book.title}' updated successfully"
          redirect_to(book_path(@book))
        else
          render('edit')
        end
      end

      def delete
        @book = Book.find(params[:id])
      end

      def destroy
        @book = Book.find(params[:id])
        @book.destroy
        flash[:notice] = "book '#{@book.title}' destroyed successfully"
        redirect_to(books_path)
      end

      private

      def book_params
        params.require(:book).permit(:title, :author, :genre, :price, :publishedDate)
      end
end
