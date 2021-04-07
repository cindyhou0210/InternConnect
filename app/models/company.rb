class Company < ApplicationRecord
  has_many :programs

  validates :name, presence: true
  validates :field, presence: true
  validates :stage, presence: true
  validates :description, presence: true
end
