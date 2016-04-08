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

    #retrieves and stores all notes associated with that wine
    wine_notes = @wine.notes
      
    ratings_array ||= []

    #stares the wine's rating from each note in an array
    wine_notes.each do |note|
      ratings_array.push(note.rating)
    end

    #calculates the average of all the ratings
    @av_rating = (ratings_array.sum / ratings_array.size.to_f).round

  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:appearance, :nose, :palate, :conclusion, :rating, :created_at, :maturity)
    end
end
