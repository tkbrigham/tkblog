class PicturesController < ApplicationController

	before_filter { @background_image_class = "pictures" }
	
	def index
		@pictures = Picture.all.reorder("day, id").page(params[:page]).per_page(12)
	end

	def show
		@picture = Picture.find(params[:id])
		@picture_header = picture_header(@picture)
	end

	private 

	def picture_header(picture)
		"Day "+picture.day.gsub('10', '010')[1..-1].to_s+" - "+ picture.location.to_s
	end

end
