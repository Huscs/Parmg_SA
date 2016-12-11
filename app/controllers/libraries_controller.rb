class LibrariesController < ApplicationController
   
   def new
       
       @library = Library.new
       
   end
   
   def index
       
       
       
   end
   
   
   def create
       
       @library = Library.new(library_params)
       @library.save
       
       redirect_to libraries_path, notice: "Library is created"
       
   end
   
   private
   
   def library_params
       params.require(:library).permit(:name,:category)
       
   end
    
end