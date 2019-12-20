class Episode < ApplicationRecord
    has_many :guests
    has_many :appearances through: :guests
end
