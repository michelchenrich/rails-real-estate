class Property < ApplicationRecord
  belongs_to :address
  has_one :rental
  has_one :sale
  validates_presence_of :address_id, :private_area, :public_area
  validates_numericality_of :bedrooms, only_integer: true, greater_than: 0
  validates_numericality_of :garages, only_integer: true, greater_than_or_equal_to: 0
  validates_numericality_of :public_area, greater_than: 0
  validates_numericality_of :private_area, greater_than: 0

  def summary
    "#{ id }, at #{ address.summary } with #{ total_area }m2"
  end

  def total_area
    private_area + public_area
  end

  def possible_addresses
    Address.all.map { |each| [each.summary, each.id] }
  end
end
