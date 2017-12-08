class PlacesController < ApplicationController

    def index
        @places = Place.all
    end

    def new
        @place = Place.new
    end


    def index
        @places = Place.paginate(:page => params[:page], per_page: 3)
    end

end
