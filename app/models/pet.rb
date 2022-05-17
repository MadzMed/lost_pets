class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w(cat dog racoon muskrat snake dragon cerbère bat)}
  validates :age, numericality: { only_integer: true, greater_than: 0 }
end
