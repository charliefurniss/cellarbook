class UserWinesController < ApplicationController
  before_action :set_wine, only: [:show]
  def index
    @wines = current_user.wines

    @title = "Your wines"

  end

  def show
    
    @notes = Note.joins(:bottle).where(bottles: { :user_id => current_user, :wine_id => @wine })

    @note = Note.new

    @bottles = @wine.bottles.where(:user => current_user, :drunk => false)

    @quantity = @bottles.count

    @users = @wine.users

    # binding.pry
  
  end

  def drink_wine

    

  end

  private
    def set_wine
      @wine = current_user.wines.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:producer, :name, :vintage, :alcohol, :region, :country, :grape, :window)
    end
end
