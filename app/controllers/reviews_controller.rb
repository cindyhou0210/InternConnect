class ReviewsController < ApplicationController
  before_action :logged_in_user
  before_action :set_review, only: %i[ show edit update destroy ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:success] = "Your review has been added!"
      redirect_to hello_world_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      flash[:success] = "Your review was successfully updated."
      redirect_to hello_world_path
    else
      flash[:danger] = "Please correct the errors."
      render :edit
    end
  end

  def show
    @review = Review.order(created_at: :desc).page(params[:page])
  end

  def destroy
    @review.destroy
    flash[:success] = "Your review was successfully deleted."
    redirect_to hello_world_path
  end

private

  def review_params
    params.require(:review).permit(:user_id, :comment, :program_id, :collaboration, 
                                   :independence, :compensation, :leadership, :multitasking)
  end

  def set_review
    @review = Review.find(params[:id])
  end


end

