class Team < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :tournament
end
