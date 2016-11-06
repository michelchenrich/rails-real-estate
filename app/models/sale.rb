class Sale < ApplicationRecord
  belongs_to :property
  validates_presence_of :property_id
  validates_uniqueness_of :property_id
  validates_numericality_of :price, greater_than: 0
  
  def possible_properties
    Property.all.map { |each| [each.summary, each.id] }
  end
end
