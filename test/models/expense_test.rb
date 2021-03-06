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
#  category_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_expenses_on_category_id  (category_id)
#  index_expenses_on_deleted_at   (deleted_at)
#  index_expenses_on_user_id      (user_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  user_id      (user_id => users.id)
#
require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
