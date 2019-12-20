class Guest < ApplicationRecord
    has_many :episodes
    has_many :appearances through: :episodes

end
