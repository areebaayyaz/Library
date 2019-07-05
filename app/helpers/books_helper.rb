module BooksHelper

def book_params
 params.require(:book).permit(:title, :author, :no_of_copies)
end

end
