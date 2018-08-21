class Cuisine < ApplicationRecord
  has_many :recipes
  has_many :users, through: :recipes
  has_many :dish_types, through: :recipes
end
