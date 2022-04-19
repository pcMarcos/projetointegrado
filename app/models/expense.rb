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
class Expense < ApplicationRecord
  acts_as_paranoid

  belongs_to :user, optional: true
  has_many :limits
  has_many :categories
end
