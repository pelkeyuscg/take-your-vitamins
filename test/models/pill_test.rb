# == Schema Information
#
# Table name: pills
#
#  id                :bigint           not null, primary key
#  vitamin_id        :integer
#  owner_id          :integer
#  brand             :string
#  description       :string
#  ingredients       :string
#  quantity          :integer
#  upc               :integer
#  order_more        :string
#  pill_takens_count :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class PillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
