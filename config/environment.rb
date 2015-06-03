require 'bundler'
Bundler.require

require './app/models/friend'
require './app/models/birthday'
require './app/models/phone_number'
require './app/models/text'

configure :development do
  set :database, "sqlite3:db/database.db"
end