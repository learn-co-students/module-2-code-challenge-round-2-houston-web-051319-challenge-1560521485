class Episode < ApplicationRecord
    has_many :apperances, dependent: :destroy
    has_many :guests, through: :apperances
end
