class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end

  def show
    set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
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

    def song_params
      
    end
end