class Player < ApplicationRecord  
  has_one :team, dependent: :destroy
  has_one :user, through: :team
end
