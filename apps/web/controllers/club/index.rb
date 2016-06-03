module Web::Controllers::Club
  class Index
    include Web::Action
    include Web::DataTransferObjects::ClubData

    def call(params)
      params do
        param :id
        param :age
      end

      results = DEFAULT_SCHEMA.call({id: params[:id], age: params[:age]})

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
