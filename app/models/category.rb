# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_categories_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses
  has_one :limit

  validates_presence_of :name, presence: true, message: 'não pode ser deixado em branco'
  validates_uniqueness_of :name, scope: :user_id, message: 'já existe para este usuário'
end
