class ManPhoto < ApplicationRecord
	validates :url, presence: true
	validates :description, presence: true

	belongs_to :man_user
end
