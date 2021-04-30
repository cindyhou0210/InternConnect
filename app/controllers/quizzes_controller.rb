class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[ result ]

  def new
      @quiz = Quiz.new
    end
  
  def create
    @quiz = Quiz.new(quiz_params)
    if !logged_in?
        flash[:danger] = "Please sign up to view your quiz results."
        redirect_to signup_path
    elsif @quiz.save
      flash[:success] = "Here are your results."
      redirect_to results_path(quiz: @quiz)
    else
      render 'new'
    end
  end

  def result
    @programs = Program.all
    @reviews = Review.all
    @results_data = @quiz.most_similar(@quiz, @programs, @reviews)
  end


  private

  def quiz_params
    params.require(:quiz).permit(:user_id, :unpaid, :job_preference, :work_auth, 
                                   :independence, :pay_preference, :leadership,
                                   :multitasking, :collaboration, :class_standing, :season)
  end

  def set_quiz
    @quiz = Quiz.find(params[:quiz])
  end

end
