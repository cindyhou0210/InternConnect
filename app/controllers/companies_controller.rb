class CompaniesController < ApplicationController
  before_action :logged_in_user
  
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Your company has been added!"
      redirect_to add_program_path
    else
      render 'new'
    end
  end


private

  def company_params
    params.require(:company).permit(:name, :field, :stage, :description)
  end
end
