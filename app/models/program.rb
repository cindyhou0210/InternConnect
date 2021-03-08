class Program < ApplicationRecord
  has_many :reviews
  has_one :company
end
