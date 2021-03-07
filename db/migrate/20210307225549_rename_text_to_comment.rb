class RenameTextToComment < ActiveRecord::Migration[6.1]
  def up
    rename_column :reviews, :text, :comment
  end

  def down
    rename_column :reviews, :comment, :text
  end
end
