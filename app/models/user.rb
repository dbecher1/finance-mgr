class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :tallies
  validates :username, presence: true, uniqueness: true

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
