# == Schema Information
#
# Table name: prescriptions
#
#  id         :bigint           not null, primary key
#  frequency  :integer
#  pill_id    :integer
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Prescription < ApplicationRecord

  belongs_to :owner, :required => true, :class_name => "User", :foreign_key => "owner_id"
  belongs_to :pill, :required => true, :class_name => "Pill", :foreign_key => "pill_id"
end
