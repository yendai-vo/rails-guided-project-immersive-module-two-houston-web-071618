class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :cuisine
  belongs_to :dish_type
  has_many :comments
end
