class AddImageToReviews < ActiveRecord::Migration[6.1]
  def up
    add_column :reviews, :image, :string
  end

  def down
    remove_column :reviews, :image, :string
  end
end
