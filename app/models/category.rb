class Category < ApplicationRecord
  belongs_to :user
  belongs_to :expense
  belongs_to :limit

end
