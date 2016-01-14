#UserNotesController operates the methods available to a logged in user

class UserWinesController < ApplicationController
  #calls private method to store relevant wine in @wine variable before any others. Only available to the show method
  before_action :set_wine, only: [:show]
  
  def index

    @wines = current_user.wines

    @title = "Your wines"

  end

  def show
    #calls relevant notes to be displayed alongside the relevant wine
    @notes = Note.joins(:bottle).where(bottles: { :user_id => current_user, :wine_id => @wine })

    @note = Note.new
    #calls relevant bottles of the relevant wine...
    @bottles = @wine.bottles.where(:user => current_user, :drunk => false)
    #... to establish the quantity available
    @quantity = @bottles.count
    
    @users = @wine.users
  
  end

  private
    def set_wine
      @wine = current_user.wines.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:producer, :name, :vintage, :alcohol, :region, :country, :grape, :window)
    end
end
