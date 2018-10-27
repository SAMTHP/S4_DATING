class ManUser < ApplicationRecord
	belongs_to :celib

	has_many :man_photos

	has_many :negative_acceptances
	has_many :woman_users, through: :negative_acceptances

	has_many :positive_acceptances
	has_many :woman_users, through: :positive_acceptances
end
