class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality:{greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Rating must be between 1 and 5"}

end
