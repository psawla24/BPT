class MapsController < ApplicationController
  def new
  	@map = Map.new
  end

  def create
  	@map = Map.new(params.require(:map).permit(:latitude, :longitude))
  		if @map.save
  			redirect_to mymap_path
  		else
  			render 'new'
  		end
  	end
end

