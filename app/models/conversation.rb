class Conversation < ApplicationRecord
	has_many :participates
 	has_many :positive_acceptances, through: :participates

 	has_many :messages
end
