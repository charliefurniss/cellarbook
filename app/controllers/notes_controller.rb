#NotesController operates the notes-related methods available to any user (ie, doesn't have to be logged in), although new notes are created here rather than in the user_notes controller


class NotesController < ApplicationController
	#calls private method to store relevant note in @note variable before any others. Only available to the show method
  before_action :set_note, only: [:show]
  def index

  	@notes = Note.all

  end

  def show
  	#retrieves and stores the wine details associated with the note
    @wine = @note.bottle.wine

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


  def new

    @note = Note.new

  end 

  def wine_note_new
    #accepts params from the new_note_form

    #find all undrunk bottles of the relevant wine owned by the user
    bottles = Bottle.where(:wine_id => params[:id] , :user => current_user, :drunk => false)
    #finds the first of the above
    bottle = bottles.first
    #challenges boolean value of drunk 
    bottle.drunk = true

    bottle.save
    #creates and saves new note using params sent from the new_note_form and attaches it to the relevant bottle
    bottle.notes.create(note_params)

    redirect_to "/user_wines/#{params[:id]}"

  end



  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      #defines which params are available, in this case in creating a new note
      params.require(:note).permit(:appearance, :nose, :palate, :conclusion, :rating, :created_at, :maturity)
    end
end
