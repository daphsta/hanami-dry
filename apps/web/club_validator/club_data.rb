
module Web::ClubValidator
  class ClubData

    CLUB_SCHEMA = Dry::Validation.Schema do
      key(:name) { filled? & str? }
      key(:starts_at) { filled? & time? }
      key(:product_id) { int? }
    end
  end
end
