class Program < ApplicationRecord
  has_many :reviews
  belongs_to :company
end
