class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese belgian french],
    message: "Please choose from chinese italian japanese belgian or french" }
end
