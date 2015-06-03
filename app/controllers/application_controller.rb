require './config/environment'
require'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  post '/friend-info' do
    puts params
    erb :confirm
  end
  
  get'/' do
    erb :index
  end

end