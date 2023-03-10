class Pill < ApplicationRecord
  belongs_to :owner, :required => true, :class_name => "User", :foreign_key => "owner_id", :counter_cache => true

  has_many  :pill_takens, :class_name => "PillTaken", :foreign_key => "pill_id"
  has_many  :prescriptions, :class_name => "Prescription", :foreign_key => "pill_id", :dependent => :destroy
  
  belongs_to :vitamin, :required => true, :class_name => "Vitamin", :foreign_key => "vitamin_id"
  
  validates :vitamin_id, presence: true
  validates :quantity, presence: true
end
