
module Web::ClubValidator
  class ClubMember

    CLUB_MEMBER_SCHEMA = Dry::Validation.Schema do
      key(:age) { filled? & gt?(18) & int? }
      key(:id) { filled? & int? }
    end
  end
end
