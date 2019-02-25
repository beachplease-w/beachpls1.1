class User < ApplicationRecord
  has_many :team_players
  has_many :teams, through: :team_players
  has_many :inscriptions, through: :teams
  has_many :tournaments, through: :inscriptions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
