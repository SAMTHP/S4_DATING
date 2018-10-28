class ManUser < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :detail, presence: true
	validates :pseudo, presence: true
	validates :email, presence: true

	belongs_to :celib

	has_many :man_photos

	has_many :negative_acceptances
	has_many :woman_users, through: :negative_acceptances

	has_many :positive_acceptances
	has_many :woman_users, through: :positive_acceptances
end
