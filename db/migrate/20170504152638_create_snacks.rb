class CreateSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :snacks do |t|
      t.string :title
      t.string :section
      t.text :content
      t.string :picture
      t.integer :latitude
      t.integer :longitude
      t.string :description
      t.timestamps
    end
  end
end
