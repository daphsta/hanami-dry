class Club
  include Hanami::Entity

  attributes :id, :name, :starts_at, :expires_at, :product_ref_id
end
