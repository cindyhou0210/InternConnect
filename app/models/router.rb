class Router < ApplicationRecord
    geocode_by :full_street_address
    after_validation :geocode
end
