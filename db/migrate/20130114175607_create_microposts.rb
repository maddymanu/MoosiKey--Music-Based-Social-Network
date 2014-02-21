class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.integer :genre_id

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
    add_index :microposts, [:genre_id, :created_at]
  end
end
