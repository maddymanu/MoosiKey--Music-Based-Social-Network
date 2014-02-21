class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :content

      t.timestamps
    end
  end
end
