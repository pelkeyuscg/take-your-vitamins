class Vitamin < ApplicationRecord
  
  has_many  :pills, :class_name => "Pill", :foreign_key => "vitamin_id"

end
