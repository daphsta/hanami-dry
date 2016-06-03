require 'dry-validation'

module Web::DataTransferObjects
  module ClubData

    DEFAULT_SCHEMA = Dry::Validation.Schema do
      configure do
        config.namespace = :web
        # config.messages_file = 'config/locales/validations/errors.yml'
        config.input_processor = :sanitizer
      end

      key(:id) { filled? & int? }
      key(:age) { filled? & int? & gt?(18) }
    end
  end
end
