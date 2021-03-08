class Review < ApplicationRecord
  has_one :program
  belongs_to :user
end
