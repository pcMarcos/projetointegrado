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
class Expense < ApplicationRecord
  acts_as_paranoid

  belongs_to :user
  belongs_to :category

  validates :name, presence: true, message: 'não pode ser deixado em branco'
  validates :value, presence: true, message: 'não pode ser deixado em branco'
  validates :category_id, presence: true, message: 'não pode ser deixado em branco'
end
