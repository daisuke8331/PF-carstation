class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      
  #カラムを追加
      t.string :name
      t.timestamps
    end
  end
end
