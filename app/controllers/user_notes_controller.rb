#UserNotesController operates the methods available to a logged in user

class UserNotesController < ApplicationController
    #calls private method to store relevant note in @note variable before any others. Only available to the show method
    before_action :set_note, only: [:show]
  def index

    @notes = current_user.notes

  end

  def show

    @wine = @note.bottle.wine

    @wine_details = "#{@wine.name} #{@wine.vintage}"
    
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:appearance, :nose, :palate, :conclusion, :rating, :created_at, :maturity)
    end
end
