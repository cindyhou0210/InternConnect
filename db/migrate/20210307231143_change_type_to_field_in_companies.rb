class ChangeTypeToFieldInCompanies < ActiveRecord::Migration[6.1]
  def up
    rename_column :companies, :type, :field
  end

  def down
    rename_column :companies, :field, :type
  end
end
