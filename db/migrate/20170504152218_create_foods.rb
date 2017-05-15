class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :title

      t.string :content
      t.string :imageurl
      t.decimal :latitude, precision: 8, scale: 6
      t.decimal	:longitude, precision: 9, scale: 6

      t.string :description

      t.timestamps
    end
  end
end
