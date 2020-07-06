
class UserController < ApplicationController

    # 7 RESTFUL routes for user:
  
    #shows all the users
    get '/user' do
  
    end

    get '/registrations/signup' do
      erb :'registrations/signup'
    end

    get '/sessions/login' do
      erb :'sessions/login'
    end

    #new user form
    get '/user/new' do
      erb :'user/new'
    end
  
    #shows 1 user
    get '/user/:id' do
      @user = User.find_by_id(params[:id])
      erb :'user/show'
    end
  
    #edit a user
    get '/user/:id/edit' do
      @user = User.find_by_id(params[:id])
      erb :'user/edit'
    end
  
    #create 1 user
    post '/user' do
      if user.save
        redirect to '/user/:id'
      end
    end
  
    #update 1 user
    patch '/user/:id' do
      user = User.find(params[:id])
      user.update(params[:user])
      redirect to "/user/#{user.id}"
    end
  
    #delete 1 user
    delete '/user/:id' do
  
    end

    post '/registrations' do
      binding.pry
    end
  end