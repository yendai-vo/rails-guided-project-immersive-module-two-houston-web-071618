class Tag < ApplicationRecord
    has_many :recipes
    has_many :recipes, through: :recipe_tag
end
