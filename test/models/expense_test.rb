# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  deleted_at  :datetime
#  description :string
#  name        :string
#  value       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_expenses_on_deleted_at  (deleted_at)
#
require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
