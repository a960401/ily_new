class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.integer :latitude
      t.integer :longitude
      t.string :description

      t.timestamps
    end
  end
end
