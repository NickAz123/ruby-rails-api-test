
        class Api::V1::AlbumsController < ApplicationController
        
            #Defines the index action  
            def index
                @albums = Album.all
                render json: @albums
            end

            # def show
            #     album = Album.find(params[:id])
            #     render json: album
            # end
        end


