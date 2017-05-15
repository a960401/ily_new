class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.integer :latitude, precision: 8, scale: 6
      t.integer :longitude, precision: 9, scale: 6
      t.string :description

      t.timestamps
    end
  end
end
