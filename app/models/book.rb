class Book < ActiveRecord::Base
    
    belongs_to :library
    accepts_nested_attributes_for :library 
    
end
