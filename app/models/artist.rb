class Artist < ApplicationRecord
  validates_presence_of :name
  has_many :songs, dependent: :destroy
end
