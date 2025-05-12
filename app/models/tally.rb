class Tally < ApplicationRecord
  validates :name, :user_id, :balance, presence: true
  belongs_to :user
  has_many :entries, dependent: :destroy
end
