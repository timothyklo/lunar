class NoteController < ApplicationController
  
  def index
    @note = Note.new
    @notes = Note.all
  end
  
  def create
    note = Note.create(note_params)
    if note.save
      redirect_to "/"
    else
      flash[:note_errors] = note.errors.full_messages
      redirect_to :back
  end
end

  def clear
    Note.destroy_all
    redirect_to "/"
  end

  private
  def note_params
     params.require(:note).permit(:text)
  end

end