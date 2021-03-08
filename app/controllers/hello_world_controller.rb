class HelloWorldController < ApplicationController
  def home
    @reviews = Review.all
  end
end
