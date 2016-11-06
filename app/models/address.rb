class Address < ApplicationRecord
  belongs_to :city
  validates_presence_of :city_id, :street, :zip_code
  has_many :properties

  def summary
    "#{street}, #{city.name}" 
  end

  def possible_cities
    City.all.map { |each| [each.name, each.id] }
  end
end
