class MoviesController < ApplicationController
    def index
       @movies = session[:movies]
    end

    def create
      # puts params[:movie]
      if session[:movies] == nil
          session[:movies] = []
      end    
      

      session[:movies].push(params[:movie])

      redirect_to movies_path
     
    end

    def new

    end 

    def show

    end
end