require './config/environment'
require'pry'
require './helpers'
require 'Date'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  post'/confirm' do
    if confirm_msg == "yes"
      erb :sent
    else
      erb :index
    end
  end
  
  post '/friend-info' do
    if Date.today == Date.parse(params["date"])
      send_sms(params["phone-number"], params["text"])
    end
    erb :confirm
  end
  
  get'/' do
    erb :index
  end

end