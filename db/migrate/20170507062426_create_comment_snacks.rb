class CreateCommentSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_snacks do |t|
      t.string :content
      t.integer :snack_id

      t.timestamps
    end
  end
end
