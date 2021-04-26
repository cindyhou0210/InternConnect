class AddBannerToUserConfids < ActiveRecord::Migration[6.1]
  def up
    add_column :user_confids, :banner, :string
  end

  def down
    remove_column :user_confids, :banner, :string
  end
end
