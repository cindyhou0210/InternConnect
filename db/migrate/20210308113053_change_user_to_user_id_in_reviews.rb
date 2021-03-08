class ChangeUserToUserIdInReviews < ActiveRecord::Migration[6.1]
  def up
    rename_column :reviews, :user, :user_id
  end

  def down
    rename_column :reviews, :user_id, :user
  end
end
