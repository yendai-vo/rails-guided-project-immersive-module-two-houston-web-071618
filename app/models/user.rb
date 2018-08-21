class User < ApplicationRecord
  has_many :recipes
  has_many :dish_types, through: :recipes
  has_many :cuisines, through: :recipes
  has_many :comments
end
