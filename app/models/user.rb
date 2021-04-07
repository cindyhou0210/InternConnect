class User < ApplicationRecord
  has_many :reviews
  belongs_to :user_confid
end
