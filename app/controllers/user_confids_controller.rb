class UserConfidsController < ApplicationController
    before_action :logged_in_user, only: [:show :mailboxer_email]
    def show
        @user = UserConfid.find(params[:id])
        @reviews = Review.all
      end
    
      def new
        @user = UserConfid.new
      end
    
      def create
        @user = UserConfid.new(user_params)
        if @user.save
          @user_acc = User.new(name: user_params[:name], major: nil, class_year: nil, bio: nil, title: nil, 
            user_confid_id: UserConfid.where(:email => user_params[:email]).first.id)
          if @user_acc.save
            log_in @user
            flash[:success] = "Welcome to the app!"
            redirect_to @user
          end
        else
          render 'new'
        end
      end
    
      private
    
      def user_params
        params.require(:user_confid).permit(:name, :email, :password, :password_confirmation)
      end
end
