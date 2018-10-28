class WomanPhoto < ApplicationRecord
	validates :url, presence: true
	validates :description, presence: true

	belongs_to :woman_user
end
