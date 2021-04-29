class QuizzesController < ApplicationController
  def new
      @quiz = Quiz.new
    end
  
  def create
    @quiz = Quiz.new(quiz_params)
    @programs = Program.all
    @reviews= Review.all
    #puts @quiz
    #puts quiz_params[:user_id]
    #puts @programs
    #puts @reviews
    @results_data = most_similar(quiz_params, @programs, @reviews)
    puts @results_data

    if !logged_in?
        flash[:danger] = "Please sign up to view your quiz results."
        redirect_to signup_path
    elsif @quiz.save
      flash[:success] = "Thanks for signing up! Here are your results."
      redirect_to results_path
    else
      render 'new'
    end
  end



  def quiz_params
    params.require(:quiz).permit(:user_id, :unpaid, :job_preference, :work_auth, 
                                   :independence, :pay_preference, :leadership,
                                   :multitasking, :class_standing, :season)
  end

  
end
