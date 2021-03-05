class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :major
      t.integer :class_year
      t.text :bio
      t.string :title
      t.integer :affiliation

      t.timestamps
    end
  end
end
