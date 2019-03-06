class Team < ApplicationRecord
  has_many :inscriptions
  has_many :team_players
  has_many :users, through: :team_players
  has_many :tournaments, through: :inscriptions
  # has_many :users, through: :team_players
end
