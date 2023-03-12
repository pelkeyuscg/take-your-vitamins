# == Schema Information
#
# Table name: vitamins
#
#  id                 :bigint           not null, primary key
#  amount_per_serving :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require "test_helper"

class VitaminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
