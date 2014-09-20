class MessagesController < ApplicationController

  def new
  	@message = Message.new
  end

  def index
    @message = Message.all
  end

  def create
    @message = Message.new(params.require(:message).permit(:subject, :content, :user))
    if @message.save
    	redirect_to root_path
    else
    	render 'new'
    end

  end

end
