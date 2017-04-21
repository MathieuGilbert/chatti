class Message < ApplicationRecord
  validates :text, :user_name, presence: true

  after_create_commit { MessageBroadcastJob.perform_later self }
end
