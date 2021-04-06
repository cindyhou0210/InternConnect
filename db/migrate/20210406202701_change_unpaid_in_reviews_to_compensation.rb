class ChangeUnpaidInReviewsToCompensation < ActiveRecord::Migration[6.1]
  def up
    remove_column :reviews, :unpaid, :boolean
    add_column :reviews, :compensation, :integer
  end

  def down
    add_column :reviews, :unpaid, :boolean
    remove_column :reviews, :compensation, :integer
  end
end
