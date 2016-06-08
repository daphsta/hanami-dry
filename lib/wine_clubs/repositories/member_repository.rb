require 'roar/client'

class MemberRepository
  include Hanami::Repository
  include Roar::Client

  def collection_for_club(club_id:)
    
  end
end
