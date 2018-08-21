class DishType < ApplicationRecord
  has_many :recipes
  has_many :users, through: :recipes
  has_many :cuisine, through: :recipes
end
