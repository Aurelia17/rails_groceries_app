class MessagesController < ApplicationController
  before_action :set_chatroom, only: %i[new create]
  def new
    @message = Message.new
  end

  def create
    @order = @chatroom.order
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      redirect_to order_path(@order)
    end
  end

  def sender?(a_user)
    user.id == a_user.id
  end
  private

  def message_params
    params.require(:message).permit(:content, :user, :chatroom_id)
  end

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end
end
