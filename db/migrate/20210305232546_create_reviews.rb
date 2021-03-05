class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user
      t.text :text

      t.timestamps
    end
  end
end
