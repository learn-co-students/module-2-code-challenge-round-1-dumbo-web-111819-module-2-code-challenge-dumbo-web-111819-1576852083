class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating , inclusion: { in: (1..5),
  message: "should be between 1 and 5" }
end
