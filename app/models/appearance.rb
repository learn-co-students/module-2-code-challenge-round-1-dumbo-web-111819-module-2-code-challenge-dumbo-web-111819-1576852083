class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :guest, presence: true
  validates :episode, presence: true
  validates :rating, numericality: { greater_than: 0, less_than: 5 }
end

