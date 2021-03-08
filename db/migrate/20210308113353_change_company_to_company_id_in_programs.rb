class ChangeCompanyToCompanyIdInPrograms < ActiveRecord::Migration[6.1]
  def up
    rename_column :programs, :company, :company_id
  end

  def down
    rename_column :programs, :company_id, :company
  end
end
