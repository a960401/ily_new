class CreateCommentBars < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_bars do |t|
      t.string :content
      t.integer :bar_id

      t.timestamps
    end
  end
end
