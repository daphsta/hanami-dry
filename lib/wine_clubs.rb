require 'hanami/model'
require 'hanami/mailer'
Dir["#{ __dir__ }/wine_clubs/**/*.rb"].each { |file| require_relative file }

Hanami::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
     # adapter type: :memory, uri: 'memory://localhost/wine_clubs_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/wine_clubs_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/wine_clubs_development'
  #    adapter type: :sql, uri: 'mysql://localhost/wine_clubs_development'
  #
  adapter type: :file_system, uri: ENV['WINE_CLUBS_DATABASE_URL']

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  # mapping do
  #   collection :clubs do
  #     entity     Club
  #     repository ClubRepository
  #
  #     attribute :id,   Integer
  #     attribute :name, String
  #   end
  # end
end.load!

Hanami::Mailer.configure do
  root "#{ __dir__ }/wine_clubs/mailers"

  # See http://hanamirb.org/guides/mailers/delivery
  delivery do
    development :test
    test        :test
    # production :stmp, address: ENV['SMTP_PORT'], port: 1025
  end
end.load!
