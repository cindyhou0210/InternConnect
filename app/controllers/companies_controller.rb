class CompaniesController < ApplicationController
  before_action :logged_in_user, only: %i[ new create ]
  before_action :set_company, only: %i[ show ]
  
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Your company has been added!"
      redirect_to new_program_path
    else
      render 'new'
    end
  end

  def show
  end


private

  def company_params
    params.require(:company).permit(:name, :field, :stage, :description)
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
