class PositiveAcceptance < ApplicationRecord
  belongs_to :man_user
  belongs_to :woman_user

  has_many :participates
  has_many :conversations, through: :participates
end
