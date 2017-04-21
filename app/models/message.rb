class Message < ActiveRecord::Base
  validates :text, :user_name, presence: true
end
