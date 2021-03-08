class AddProgramIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :program_id, :integer
  end
end
