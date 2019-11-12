class Player < ApplicationRecord  
  has_one :team
  has_one :user, through: :team
end
