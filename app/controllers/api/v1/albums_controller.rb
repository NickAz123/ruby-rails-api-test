
class Api::V1::AlbumsController < ApplicationController

    #lets these keys go through
    ALLOWED_DATA = %[title artist rating genre].freeze     
    #Defines the index action  
    def index
        albums = Album.all
        render json: albums
    end

    def show
        album = Album.find(params[:id])
        render json: album
    end

    def create
        #This line of code will iterate through payload and check keys against allowed data
        data = json_payload.select {|k| ALLOWED_DATA.include?(k)}
        album = Album.new(data)

        if album.save
            render json: album
        else
            render json: {"error": "Album not created"}
        end
    end

    def destroy
        album = Album.find(params[:id])
        
        if album.destroy
            render json: {"Success": "Album with id " + params[:id] + " was deleted!"}
        end
    end

end


