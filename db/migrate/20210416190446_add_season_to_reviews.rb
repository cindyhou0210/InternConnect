class AddSeasonToReviews < ActiveRecord::Migration[6.1]
  def up
    add_column :reviews, :season, :string
  end

  def down
    remove_column :reviews, :season, :string
  end
end
