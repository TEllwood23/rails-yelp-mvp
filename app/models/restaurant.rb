class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, presence: true
  # validates_inclusion_of :category, :in => %w(chinese italian japanese belgian french), :allow_nil => true
end
