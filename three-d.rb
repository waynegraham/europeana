require 'dotenv'
require 'europeana/api'

Dotenv.load

Europeana::API.api_key = ENV.fetch('API_KEY', '')

search = Europeana::API.search(query: '"mosque"')

puts search.inspect
