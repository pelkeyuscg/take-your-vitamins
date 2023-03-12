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
require "test_helper"

class PillTakenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
