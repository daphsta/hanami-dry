require 'hanami/validations'

module Web::ClubValidator
  class ClubData
    include Hanami::Validations

    validations do
      required(:name) { filled? & str? & size?(3..50) }
      required(:start_at).filled(:time?)
    end
  end
end
