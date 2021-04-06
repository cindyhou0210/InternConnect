class AddClassStandingToQuiz < ActiveRecord::Migration[6.1]
  def up
    add_column :quizzes, :class_standing, :integer
  end

  def down
    remove_column :quizzes, :class_standing, :integer
  end
end
