class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    if message.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:text, :image).to_h.merge(user_id: current_user.id)
  end
end
