class Lab02EcommerceController < ApplicationController
	
	def index
		@user = User.all
	end

def destroy
		session.delete(:current_user)
		redirect_to login_path
	end

def register
		
end

def login
	@userlogin = User.find_by(login_params)

		if @userlogin.nil?
			flash[:error] = "Wrong email or password."
			render :index
		else
			session[:current_user] = @userlogin
			flash[:success] = "Login successfully."
			redirect_to messenger_path(:name =>@userlogin.name, :id =>@userlogin)
		end
	
end
def login_params
		params.require(:userlogin).permit(:email, :password)
end
#### Here's register #######
	def create
		if(!User.find_by(email: register_params[:email]))
			user = User.create!(register_params)
		end

		if user
			flash[:success] = "Register successfully."
			redirect_to index_path
		else
			flash[:error] = "Cannot register."
			redirect_to register_path
		end
	end
	def register_params
		params.require(:user).permit(:name, :email, :password)
	end

	

	
end
