class AddQuizColsToReviews < ActiveRecord::Migration[6.1]
  def up
    add_column :reviews, :collaboration, :integer
    add_column :reviews, :independence, :integer
    add_column :reviews, :unpaid, :boolean
    add_column :reviews, :leadership, :integer
    add_column :reviews, :multitasking, :integer
  end

  def down
    remove_column :reviews, :collaboration, :integer
    remove_column :reviews, :independence, :integer
    remove_column :reviews, :unpaid, :boolean
    remove_column :reviews, :leadership, :integer
    remove_column :reviews, :multitasking, :integer
  end
end
