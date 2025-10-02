class Board < ApplicationRecord
  belongs_to :team
  has_many :lists, -> { order(position: :asc) }
end
