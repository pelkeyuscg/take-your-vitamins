# == Schema Information
#
# Table name: vitamins
#
#  id                 :bigint           not null, primary key
#  amount_per_serving :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Vitamin < ApplicationRecord
  
  has_many  :pills, :class_name => "Pill", :foreign_key => "vitamin_id"

end
