class Appearance < ApplicationRecord
  belongs_to :guest, dependent: :destroy
  belongs_to :episode, dependent: :destroy
  validates :rating, numericality: {less_than_or_equal_to: 5, greater_than_or_equal_to: 1},  presence: true

end
