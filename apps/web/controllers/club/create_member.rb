module Web::Controllers::Club
  class CreateMember
    include Web::Action

    params do
      param :member_id
      param :age
    end

    def call(params)
      results = Web::ClubValidator::ClubMember::CLUB_MEMBER_SCHEMA.call(member_id: params[:member_id], age: params[:age], club_id: params[:id])

      if results.success?
        self.body = "Club created"
        self.status = 201
      else
        self.body = results.messages
        self.status = 500
      end
    end
  end
end
