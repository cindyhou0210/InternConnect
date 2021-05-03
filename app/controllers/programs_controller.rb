class ProgramsController < ApplicationController
  before_action :logged_in_user, only: %i[ new create ]
  before_action :set_program, only: %i[ show ]
  
  def new
    @program = Program.new
  end

  def show
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      flash[:success] = "Your program has been added!"
      redirect_to new_review_path
    else
      render 'new'
    end
  end


private

  def program_params
    params.require(:program).permit(:company_id, :name, :field, :paid, :work_auth, :class_standing, :season)
  end

  def set_program
    @program = Program.find(params[:id])
  end
end
