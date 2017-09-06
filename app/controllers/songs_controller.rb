class SongsController < ApplicationController

before_action :set_artist
before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @artist.songs
  end

  def show
  end

  def new
    @song = @artist.songs.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to [@artist]
    else
      render partial: "form"
    end
  end

  def update
    if @song.update(song_params)
      redirect_to [@artist]
    else
      render partial: "form"
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path[@artist]
  end

private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name)
  end

  def set_song
    @song = Song.find(params[:id])
  end

end
