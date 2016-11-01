class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.display
  end

  def create
    message = Message.create(message_params)
    if message.save
      message.update_attribute(:username, session[:username])
      redirect_to messages_path
    end

  end

  private
    def message_params
      params.require(:message).permit(:content)
    end
end
