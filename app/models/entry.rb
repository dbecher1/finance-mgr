class Entry < ApplicationRecord
  validates :name, :price, :tally, presence: true
  belongs_to :tally
end
