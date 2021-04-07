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
      format.html { redirect_to @instructor, notice: "Instructor was successfully updated." }
    else
      format.html { render :edit, status: :unprocessable_entity }
    end
  end

  def show
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

