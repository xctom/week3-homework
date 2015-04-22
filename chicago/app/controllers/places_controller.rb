class PlacesController < ApplicationController
	
	def index
		@places = Place.all
	end

	def show
		@place = Place.find_by(:id => params[:id])

    if @place
    	@reviews = Review.where(:place_id => @place.id).order("id DESC")
    else
      redirect_to "/", notice: "Place not found."
    end
	end

	def delete
		@place = Place.find_by(:id => params[:id])

		if @place
			@place.delete
			redirect_to "/"
		else	
			redirect_to "/", notice: "Place not found."
		end
	end

	def new
		
	end

	def create
		if params[:name]
			p = Place.new
			p.name = params[:name]
			p.admission_price = (params[:admission_price].to_f * 100).to_i
			p.photo_url = params[:photo_url]
			p.description = params[:description]
			p.save
			redirect_to "/"
		else
			redirect_to "/", notice: "Cannot create a Place with name."
		end
	end

	def edit
		@place = Place.find_by(:id => params[:id])

    if !@place
      redirect_to "/", notice: "Place not found."
    end

	end

	def update
		place = Place.find_by(:id => params[:id])

    if place

    	if params[:name]
    		
    		place.name = params[:name]
    		place.admission_price = (params[:admission_price].to_f * 100).to_i
    		place.description = params[:description]
    		place.photo_url = params[:photo_url]
    		place.save

    		redirect_to "/places/#{place.id}"

    	else
    		redirect_to "/", notice: "Cannot update a Place's name to empty."
    	end

    else
      redirect_to "/", notice: "Place not found."
    end
	end

	def add_review
		place = Place.find_by(:id => params[:id])

		if place

			if params[:title].length > 0
				review = Review.new
				review.place_id = place.id
				review.description = params[:review_description]
				review.title = params[:title]
				review.rating = params[:rating].to_i
				review.save

				redirect_to "/places/#{place.id}"
			else
				redirect_to "/places/#{place.id}", notice: "Review cannot be empty."
			end

		else
			redirect_to "/", notice: "Place not found."
		end
	end
end