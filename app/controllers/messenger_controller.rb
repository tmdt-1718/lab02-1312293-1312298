class MessengerController < ApplicationController
	
	def index
		@user = User.all
		@friend = Friend.all
		$owner = params[:name]
		$id = params[:id]
		@inbox = Inbox.all
	end

	def addfriend
		@friend = User.find_by(email: addfriend_params[:email])

		if @friend.nil?
			redirect_to messenger_path(:name =>$owner, :id =>$id)
		else
			if (!Friend.find_by(name: $id, friend: @friend[:id]))
				Friend.create!(name: $id, friend: @friend[:id])
			end
			
			redirect_to messenger_path(:name =>$owner, :id =>$id)
		end
	end

	def addfriend_params
		params.require(:friend).permit(:email)
	end
end
