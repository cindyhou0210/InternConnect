class AddSeasonToPrograms < ActiveRecord::Migration[6.1]
  def up
    add_column :programs, :season, :string
  end

  def down
    remove_column :programs, :season, :string
  end
end
