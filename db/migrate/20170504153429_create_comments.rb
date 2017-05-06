class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :food_id
      t.integer :bar_id
      t.integer :snack_id

      t.timestamps
    end
  end
end
