class RenameUserconfIdInUsers < ActiveRecord::Migration[6.1]
  def up
    rename_column :users, :userconf_id, :user_confid_id
  end

  def down
    rename_column :users, :user_confid_id, :userconf_id
  end
end
