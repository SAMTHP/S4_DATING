class Message < ApplicationRecord
	validates :subject, presence: true
	validates :content, presence: true

	belongs_to :conversation
end
