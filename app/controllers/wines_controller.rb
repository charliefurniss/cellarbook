#WinesController operates the wine-related methods available to any user (ie, doesn't have to be logged in), although new wines are created here rather than in the user_wines controller
class WinesController < ApplicationController
  #calls private method to store relevant wine in @wine variable before any others. Only available to the show method
  before_action :set_wine, only: [:show]
  #allows only logged in users to add wines. The authenticate method is defined in the Application controller and sends users to login page if they are not logged in
  before_action :authenticate, only: [:new]
  
  def index

    @wines = Wine.all

  end

  def show
    
    @wine_details = "#{@wine.name} #{@wine.vintage}"

    @notes = @wine.notes

    @users = @wine.users

  end

  def new

    @wine = Wine.new

  end

  def create

    if !logged_in?

      redirect_to root_path

    end

    @wine = Wine.new(wine_params)

    if @wine.save

      quantity = bottle_params[:quantity].to_i
      #adds the relavent number of entries referring the new wine and the current_user in the Bottle table
      quantity.times do |i|

        @bottle = Bottle.create(wine: @wine , user: current_user)
            
      end

      redirect_to action: @users_wine

    else
      # shows the user the completed form again
      render "new"

    end
    
  end

  private
    def set_wine
      @wine = Wine.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:producer, :name, :vintage, :alcohol, :region, :country, :grape, :window_start, :window_end, :style)
    end

    def bottle_params
      params.require(:bottle).permit(:vendor, :price, :quantity)
    end
end
