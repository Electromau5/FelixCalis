class PinsController < ApplicationController
	def index
		@pin = Pin.all
	end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new (set_pins)
			if @pin.save
				redirect_to pins_path(@Pin)
			else
				render 'new'
			end	
	end

	def show
		@pin = Pin.find(params[:id])
	end



	private
		def set_pins
			params.require(:pin).permit(:name, :image)
		end
	end
