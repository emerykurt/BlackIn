
class UserController < ApplicationController

    # 7 RESTFUL routes for user:
  
    #shows all the users
    get '/user' do
  
    end

    #new user form
    get '/user/new' do
      erb :'user/new'
    end
  
    #shows 1 user
    get '/user/:id' do
  
    end
  
    #edit a user
    get '/user/:id/edit' do
  
    end
  
    #create 1 user
    post '/user' do
  
    end
  
    #update 1 user
    patch '/user/:id' do
      user = User.new(params)
      user.save
      redirect to '/user'
    end
  
    #delete 1 user
    delete '/user/:id' do
  
    end
  end