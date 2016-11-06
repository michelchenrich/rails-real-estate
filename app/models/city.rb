class City < ApplicationRecord
  has_many :addresses
  has_many :properties, through: :addresses
  validates_presence_of :name
  validates_uniqueness_of :name
end
