module Web::Controllers::Club
  class Index
    include Web::Action

    def call(params)
      params do
        param :id
        param :age
      end

      results = Web::DataTransferObjects::ClubData.new(id: params[:id], age: params[:age]).validate

      if results.success?
        self.body = "Club mofo created"
        self.status = 201
      else
        self.body = results.messages
        self.status = 500
      end
    end
  end
end
