class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      #投稿ID、会員ID、コメント(本文)追加
      t.integer :post_id
      t.integer :customer_id
      t.text :comment
      #ここまで
      t.timestamps
    end
  end
end
