class ChangeUserToStringInReviews < ActiveRecord::Migration[6.1]
  def up
    change_column :reviews, :user, :string
  end

  def down
    change_column :reviews, :user, :integer
  end
end
