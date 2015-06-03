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
    if params["confirm"] == "yes"
      erb :sent
    else
      erb :index
    end
  end
  
  post '/friend-info' do
    if params["phone-number"].scan(/\d/).length == 10
      just_digits = params["phone-number"].scan(/\d/).join
      if Date.today == Date.parse(params["date"])
        send_sms(just_digits, params["text"])
        erb :confirm
      else
        erb :index
      end
    else
      erb :index
    end
    
  end
  
  get'/' do
    erb :index
  end

end