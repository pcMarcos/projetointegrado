# == Schema Information
#
# Table name: limits
#
#  id          :integer          not null, primary key
#  name        :string
#  value       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_limits_on_category_id  (category_id)
#  index_limits_on_user_id      (user_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  user_id      (user_id => users.id)
#
class Limit < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :name, presence: true, message: 'não pode ser deixado em branco'
  validates :category_id, presence: true, uniqueness: { scope: :category_id,
                                                        message: 'Limite já existe para esta categoria' }
end
