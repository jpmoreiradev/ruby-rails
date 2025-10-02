class List < ApplicationRecord
  belongs_to :board
  has_many :cards, -> { order(position: :asc) }
end
