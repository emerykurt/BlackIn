require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    "main page"
  end

  get "/signup" do
    erb :signup
  end

end
