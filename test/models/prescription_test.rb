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
require "test_helper"

class PrescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
