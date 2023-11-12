class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      #会員ID、タイトル、本文追加
      t.integer :user_id
      t.string :title
      t.text :body
      #ここまで
      t.timestamps
    end
  end
end
