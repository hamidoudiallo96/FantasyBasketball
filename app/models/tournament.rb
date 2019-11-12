class Tournament < ApplicationRecord
  has_many :teams
  has_one :user, through: :team
  has_many :players, through: :teams
end
