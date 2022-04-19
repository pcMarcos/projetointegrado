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
class Limit < ApplicationRecord
  acts_as_paranoid

  has_many :expenses
  has_many :categories
  belongs_to :user
end
