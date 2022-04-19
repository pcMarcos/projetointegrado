# == Schema Information
#
# Table name: limits
#
#  id         :integer          not null, primary key
#  deleted_at :datetime
#  value      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_limits_on_deleted_at  (deleted_at)
#
require "test_helper"

class LimitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
