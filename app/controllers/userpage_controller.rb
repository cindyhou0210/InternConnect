class UserpageController < ApplicationController
    
        before_action :logged_in_user
        def show
            @user = current_user
            @reviews = Review.all
        end
    
    
end
