class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      #会員ID、投稿ID追加
      t.integer :user_id
      t.integer :post_id
      #ここまで
      t.timestamps
    end
  end
end
