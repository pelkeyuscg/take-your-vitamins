# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  password_digest :string
#  username        :string
#  schedule        :string
#  pills_count     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many  :pills, :class_name => "Pill", :foreign_key => "owner_id"
  has_many  :prescriptions, :class_name => "Prescription", :foreign_key => "owner_id", :dependent => :destroy

  validates :username, :length => { :minimum => 5, :maximum => 20 }
  validates :username, :presence => true
  validates :username, :uniqueness => true
end
