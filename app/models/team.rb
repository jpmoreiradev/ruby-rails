class Team < ApplicationRecord
  has_many :boards      # cada time tem vários boards
end
