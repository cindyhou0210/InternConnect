class AddFieldsToQuizzes < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzes, :pay_preference, :integer
    add_column :quizzes, :season, :string
  end
end
