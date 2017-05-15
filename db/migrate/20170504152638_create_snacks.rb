class CreateSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :snacks do |t|
      t.string :title
      #t.string :section
      t.text :content
      #t.string :picture
      t.string :imageurl
      t.decimal :latitude, precision: 8, scale: 6
      t.decimal	:longitude, precision: 9, scale: 6
      t.string :description
      t.timestamps
    end
  end
end
