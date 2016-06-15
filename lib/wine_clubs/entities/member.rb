require 'roar/client'

class Member
  include Hanami::Entity
  include Roar::Client

  attributes :member_id, :name, :position, :birthdate, :joined_at

  BASE_URI = 'http://localhost:2400/'
  def member_by_club(club_id:)
    members = get(uri: BASE_URI + "club/#{club_id}/members", as: "application/json")

  end

end
