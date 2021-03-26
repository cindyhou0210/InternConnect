class UserConfidsController < ApplicationController
    before_action :logged_in_user, only: [:show]
    def show
        @user = UserConfid.find(params[:id])
      end
    
      def new
        @user = UserConfid.new
      end
    
      def create
        @user = UserConfid.new(user_params)
        if @user.save
          flash[:success] = "Welcome to the app!"
          redirect_to @user
        else
          render 'new'
        end
      end
    
      private
    
      def user_params
        params.require(:user_confid).permit(:name, :email, :password, :password_confirmation)
      end
end
