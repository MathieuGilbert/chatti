class MessagesController < ApplicationController
  expose :messages, -> { Message.all.order(created_at: :desc) }
  expose :message

end
