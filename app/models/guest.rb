class Guest < ApplicationRecord
    has_many :apperances, dependent: :destroy
    has_many :episodes, through: :apperances
end
