
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
      user = User.create(params[:user])
      if user.save
        session[:user_id] = user.id
        redirect to '/user/:id'
      else
        @error = user.errors.full_messages.join(" - ")
        erb :'user/new'
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

    #should be in a sessions controller
    get '/logout' do
      session.clear
      redirect to '/login'
    end

    get '/login' do
      erb :'user/login'
    end

    post '/login' do
      user = User.find_by_username(params[:user][:username])
      if user && user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect to '/eatery'
      else
        redirect '/login'
      end
    end
  end