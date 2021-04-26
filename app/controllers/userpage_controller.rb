class UserpageController < ApplicationController
    before_action :logged_in_user
    
        before_action :logged_in_user
        def create
            @user = current_user
            @reviews = Review.all
            @user.banner.attach(params[:banner])
            ##redirect_to reviews_path
        
        end
        
        def show
            @user = current_user
            @reviews = Review.all
            @user.banner.attach(params[:banner])
        

        end
    
    
end
