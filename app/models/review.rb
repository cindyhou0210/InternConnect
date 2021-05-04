class Review < ApplicationRecord
  belongs_to :program
  belongs_to :user
  has_one_attached :image
  paginates_per 10

  validates :comment, presence: true
  validates :collaboration, presence: true
  validates :independence, presence: true
  validates :multitasking, presence: true
  validates :compensation, presence: true
  validates :leadership, presence: true
end
