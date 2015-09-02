class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :soundfile
      t.integer :upvote
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
