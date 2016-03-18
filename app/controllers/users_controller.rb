class UsersController < ApplicationController

	before_action :set_user, only: [:edit, :update, :show, :contact, :destroy]
	before_action :require_admin, except: [:show, :contact]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
			if @user.save
				session[:seller_id] = @seller.id
				redirect_to user_path(@user)
			else
				render 'new'
			end
	end

	def edit
	end

	def update
			if @user.update(user_params)
				redirect_to user_path(@user)
			else
				render 'edit'
			end
	end

	def show
	end	

	def contact
	end


	def destroy
		@user.destroy
		redirect_to pins_path
	end

	private
		def user_params
			params.require(:user).permit(:username, :email, :age, :description, :location, :number, :address, :password, :image)
		end
		
		def set_user
			@user = User.find(params[:id])
		end
	end
