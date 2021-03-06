class Tournament < ApplicationRecord
  monetize :price_cents
  has_many :inscriptions
  has_many :messages

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_address_serie_and_name,
            against: [:address, :serie, :name, :genre],
            using: {
              tsearch: { prefix: true } # <-- now `superman batm` will return something!
            }

  mount_uploader :photo, PhotoUploader
end
