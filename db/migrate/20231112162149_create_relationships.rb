class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      #フォローするID、フォローされるIDを追加
      t.integer :follower_id
      t.integer :followed_id
      #ここまで
      t.timestamps
    end
  end
end
