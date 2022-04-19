# == Schema Information
#
# Table name: limits
#
#  id         :integer          not null, primary key
#  value      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#
class Limit < ApplicationRecord
  acts_as_paranoid

  has_many :expenses
  has_many :categories
  belongs_to :user
end
