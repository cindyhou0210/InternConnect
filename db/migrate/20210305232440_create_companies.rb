class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :type
      t.string :stage
      t.text :description

      t.timestamps
    end
  end
end
