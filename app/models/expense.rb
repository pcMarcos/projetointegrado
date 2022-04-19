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
class Expense < ApplicationRecord
  acts_as_paranoid

  belongs_to :user
  has_many :limits
  has_many :categories
end
