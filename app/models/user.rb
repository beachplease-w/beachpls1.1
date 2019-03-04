class User < ApplicationRecord
  has_many :team_players
  has_many :teams, through: :team_players
  has_many :inscriptions, through: :teams
  has_many :tournaments, through: :inscriptions
  has_many :orders

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :license_no, presence: true
  validates :birth_date, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader
end
