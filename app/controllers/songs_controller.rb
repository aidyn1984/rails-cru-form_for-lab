class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @songs = Song.all
    end

    def show
        # song = Song.find(params[:id])
    end

    def new
        @song = Song.new
        @artists = Artist.all
        @genres = Genre.all
    end


    def create
        @song = Song.new(song_params)
        @song.save
        redirect_to song_path(@song.id)
    end

    def edit 
        # song = Song.find(params[:id])
        @artists = Artist.all
        @genres = Genre.all
    end

    def update
        # song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_path
    end

    def destroy
        # song = Song.find(params[:id]
        @song.destroy

        redirect_to songs_path
    end
    
    
    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end



    def find_song
        @song = Song.find(params[:id])
    end
end
