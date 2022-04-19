# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  name       :string
#  value      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#
require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
