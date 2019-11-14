class User < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :players, through: :teams
  has_many :tournaments, through: :teams
  has_secure_password
end
