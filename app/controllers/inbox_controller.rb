class InboxController < ApplicationController
	def index
		$myId = params[:myId]
		$friendId = params[:friendId]
		@inbox = Inbox.all
	end

	def sendMessage
		@me = params[:myId]
		@friend = params[:friendId]
		Inbox.create!(fromId: @me, toId: @friend, messge: getMessage[:message], unread: true)
		redirect_to inbox_path(:myId =>@me, :friendId =>@friend)
	end

	def getMessage
		params.require(:inbox).permit(:message)
	end



end
