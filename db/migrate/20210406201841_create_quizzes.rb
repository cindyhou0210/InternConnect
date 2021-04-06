class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.integer :user_id
      t.boolean :unpaid
      t.string :job_preference
      t.boolean :work_auth
      t.integer :collaboration
      t.integer :independence
      t.integer :leadership
      t.integer :multitasking

      t.timestamps
    end
  end
end
