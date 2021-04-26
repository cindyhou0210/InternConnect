class RemoveSeasonFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :season, :string
  end
end
