class Tournament < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_one :user, through: :team
  has_many :players, through: :teams
end
