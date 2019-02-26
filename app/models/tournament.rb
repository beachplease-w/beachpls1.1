class Tournament < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch
  pg_search_scope :search_by_address_serie_and_name,
            against: [:adress, :serie, :name],
            using: {
              tsearch: { prefix: true } # <-- now `superman batm` will return something!
            }
end
