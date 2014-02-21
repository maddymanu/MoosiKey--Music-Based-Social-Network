class AddGenreToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :genre, :text
  end
end
