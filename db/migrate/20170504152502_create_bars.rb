class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.string :description

      t.timestamps
    end
  end
end
