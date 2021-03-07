class ChangeTypeToFieldInPrograms < ActiveRecord::Migration[6.1]
  def up
    rename_column :programs, :type, :field
  end

  def down
    rename_column :programs, :field, :type
  end
end
