class ProgramsController < ApplicationController
  
  def new
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      flash[:success] = "Your program has been added!"
      redirect_to add_review_path
    else
      render 'new'
    end
  end


private

  def program_params
    params.permit(:company_id, :name, :field, :work_auth, :class_standing)
  end
end
