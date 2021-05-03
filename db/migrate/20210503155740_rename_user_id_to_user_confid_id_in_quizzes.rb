class RenameUserIdToUserConfidIdInQuizzes < ActiveRecord::Migration[6.1]
  def up
    rename_column :quizzes, :user_id, :user_confid_id
  end

  def down
    rename_column :users, :user_confid_id, :user_id
  end
end
