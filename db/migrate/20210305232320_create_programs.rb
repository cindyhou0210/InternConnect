class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :type
      t.boolean :paid
      t.boolean :work_auth
      t.integer :class_standing
      t.integer :company

      t.timestamps
    end
  end
end
