class ChangeAffiliationToString < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :affiliation, :string
  end

  def down
    change_column :users, :affiliation, :integer
  end
end
