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
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
    else
      render :new
    end
  end

  def edit
    set_song
  end

    def update
      set_song
      @song.update(song_params)
      if @song.valid?
        @song.save
      else
        render :edit
      end
    end

    private

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).parmit(:title, :released, :release_year, :artist_name, :genre)
    end
end