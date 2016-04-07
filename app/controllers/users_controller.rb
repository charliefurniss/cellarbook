#handles users signing up, viewing and editin their profiles.

class UsersController < ApplicationController
  before_action :authenticate, only: [:show]
  
  def show
    @user = current_user
  end

  def new
    #calls method defined in application controller
    if logged_in?
      redirect_to root_path
    end

    @user = User.new

  end

  def create
    if logged_in?
      redirect_to root_path
    end

    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Thank you for registering. Now log in to start using CellarBook."
      redirect_to new_session_path
    else
      # shows the user the completed form again
      render "new"
    end
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to user_path
  end  

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 

end
