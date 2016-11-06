FactoryGirl.define do
  factory :property do
    address_id 1
    bedrooms 1
    garages 1
    party_area false
    private_area 1.5
    public_area 1.5
    security false
    public_patio false
    public_pool false
  end
end
