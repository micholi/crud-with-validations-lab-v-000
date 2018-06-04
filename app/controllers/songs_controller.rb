class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end

  def show
    set_show
  end

  def new

  end

  def create

  end

  def edit
    set_show
  end

    def update
      set_show
    end

    private

    def set_song
      @song = Song.find(params[:id])
    end
end