class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.string :imageurl
      t.string :mapurl
      t.string :description
      t.decimal :latitude, precision: 8, scale: 6
      t.decimal	:longitude, precision: 9, scale: 6
      t.timestamps
    end
  end
end
