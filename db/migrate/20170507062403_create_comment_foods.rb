class CreateCommentFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_foods do |t|
      t.string :content
      t.integer :food_id

      t.timestamps
    end
  end
end
