collection :clubs do
  entity     Club
  repository ClubRepository

  attribute :id,   Integer
  attribute :name, String
  attribute :starts_at, Time
  attribute :expires_at, Time
  attribute :product_ref_id, String
end
