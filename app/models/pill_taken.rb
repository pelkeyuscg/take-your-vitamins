# == Schema Information
#
# Table name: pill_takens
#
#  id         :bigint           not null, primary key
#  pill_id    :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PillTaken < ApplicationRecord

  belongs_to :pill, :required => true, :class_name => "Pill", :foreign_key => "pill_id", :counter_cache => true

end
