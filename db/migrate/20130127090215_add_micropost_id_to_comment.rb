class AddMicropostIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :micropost_id, :integer
  end
end
