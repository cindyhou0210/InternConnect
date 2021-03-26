class Item < ApplicationRecord
  belongs_to :user_confids
  validates :name, presence: true
end
