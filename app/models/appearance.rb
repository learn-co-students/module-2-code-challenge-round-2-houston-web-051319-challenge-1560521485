class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: { less_than_or_equal_to: 5, greater_than: 0, only_integer: true }

end