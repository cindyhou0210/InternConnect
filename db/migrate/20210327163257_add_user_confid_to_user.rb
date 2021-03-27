class AddUserConfidToUser < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :userconf_id, :integer
  end

  def down
    remove_column :users, :userconf_id, :integer
  end
end
