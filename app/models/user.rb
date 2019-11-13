class User < ApplicationRecord
  has_many :teams
  has_many :players, through: :teams
  has_many :tournaments, through: :teams
end
