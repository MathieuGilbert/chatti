class MessagesController < ApplicationController
  expose :messages, -> { Message.all }
  expose :message

  def create
    if message.save
      redirect_to root_path
    else
      render :index
    end
  end

private

  def message_params
    params.require(:message).permit(:text).merge(user_name: current_user)
  end

end
