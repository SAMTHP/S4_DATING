class WomanUser < ApplicationRecord
	belongs_to :celib

	has_many :woman_photos

	has_many :negative_acceptances
	has_many :man_users, through: :negative_acceptances

	has_many :positive_acceptances
	has_many :man_users, through: :positive_acceptances

end
