class MessagesController < ApplicationController

  def new
  	@message = Message.new
  end

  def index
    @message = Message.all
  end

  def create
    # @message = Message.create(params[:content])
    @message = Message.new(params.require(:message).permit(:subject, :content))
    if @message.save
    	redirect_to allmsgs_path
    else
    	render 'new'
    end

  end

end
