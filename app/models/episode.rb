class Episode < ApplicationRecord
  has_many :guest, through: :appearances
  
end
