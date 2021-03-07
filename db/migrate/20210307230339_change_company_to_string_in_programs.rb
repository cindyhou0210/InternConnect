class ChangeCompanyToStringInPrograms < ActiveRecord::Migration[6.1]
  def up
    change_column :programs, :company, :string
  end

  def down
    change_column :programs, :company, :integer
  end
end
