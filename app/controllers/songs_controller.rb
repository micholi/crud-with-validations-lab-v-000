class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end

  def show
    set_song
  end

  def new

  end

  def create

  end

  def edit
    set_song
  end

    def update
      set_song
    end

    private

    def set_song
      @song = Song.find(params[:id])
    end
end