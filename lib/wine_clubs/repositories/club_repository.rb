class ClubRepository
  include Hanami::Repository

  def initialize(id:)
    @id = id
  end

  def find_by(conditions)
    self.where(conditions)
  end

  def members_for_club
    puts "Members for club #{club.name}"
  end

  def club_offering_for_run(run_id:)
  end

  private
  attr_reader :id

  def club(id)
    @club ||= self.find(id)
  end
end
