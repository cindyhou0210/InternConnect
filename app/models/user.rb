class User < ApplicationRecord
  has_many :reviews
  belongs_to :user_confid
  has_one_attached :banner
end
