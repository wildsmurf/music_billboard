class Billboard < ApplicationRecord
  validates_presence_of :name, uniqueness: true
  has_many :songs
end
