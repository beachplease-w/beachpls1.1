class Team < ApplicationRecord
  has_many :inscriptions
  has_many :team_players
  has_many :tournaments, through: :inscriptions
end
