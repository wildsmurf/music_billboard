class Song < ApplicationRecord
  validates_presence_of :name
  belongs_to :artist
  belongs_to :billboard, optional: true
end
