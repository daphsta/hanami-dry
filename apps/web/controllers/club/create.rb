module Web::Controllers::Club
  class Create
    include Web::Action

    params do
      param :name
      param :starts_at
      param :product_ref_id
    end

    def call(params)
      results = Web::ClubValidator::ClubData::CLUB_SCHEMA.call(name: params[:name], starts_at: params[:starts_at], product_ref_id: params[:product_ref_id])
      if results.success?
        club = Club.new(name: params[:name], starts_at: params[:starts_at], product_ref_id: params[:product_ref_id])
        ClubRepository.create(club)

        self.body = "Club created"
        self.status = 201
      else
        self.body = results.messages
        self.status = 500
      end
    end
  end
end
