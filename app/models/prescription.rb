class Prescription < ApplicationRecord

  belongs_to :owner, :required => true, :class_name => "User", :foreign_key => "owner_id"
  belongs_to :pill, :required => true, :class_name => "Pill", :foreign_key => "pill_id"
end
