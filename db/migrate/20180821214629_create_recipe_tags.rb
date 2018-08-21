class CreateRecipeTags < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_tags do |t|
      t.belongs_to :recipe 
      t.belongs_to :tag
      t.timestamps
    end
  end
end
