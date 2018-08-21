class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :img_url
      t.string :title
      t.string :cook_time
      t.string :instruction
      t.belongs_to :user
      t.belongs_to :cuisine
      t.belongs_to :dish_type
      t.timestamps
    end
  end
end
