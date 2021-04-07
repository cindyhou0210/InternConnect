class ReviewsController < ApplicationController
  before_action :logged_in_user, only: %i[new edit update destroy ]
  before_action :set_review, only: %i[ show edit update destroy ]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:success] = "Your review has been added!"
      redirect_to reviews_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      flash[:success] = "Your review was successfully updated."
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @review.destroy
    flash[:success] = "Your review was successfully deleted."
    redirect_to reviews_path
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

