class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :img_url
      t.string :title
      t.string :cook_time
      t.string :ingredient
      t.string :instruction
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
