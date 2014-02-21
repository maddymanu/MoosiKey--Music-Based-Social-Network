class AddGenreIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :genre_id, :integer
  end
end
