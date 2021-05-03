class Program < ApplicationRecord
  has_many :reviews
  belongs_to :company

  validates :name, presence: true
  validates :field, presence: true
  validates :class_standing, presence: true
  validates :season, presence: true
end
