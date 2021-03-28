class ReviewsController < ApplicationController
  before_action :logged_in_user

  def new
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

private

  def review_params
    params.permit(:user_id, :comment, :program_id, :collaboration, 
                                   :independence, :unpaid, :leadership, :multitasking)
  end


end

