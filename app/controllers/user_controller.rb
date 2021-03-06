
class UserController < ApplicationController

    get '/user/new' do
      erb :'user/new'
    end
  
    get '/user/:id' do
      
     if current_user
      @user = User.find_by_id(params[:id])
      @ratings = Rating.all 
      @eats = Eatery.all 
      erb :'user/show'
     else
      erb :'welcome'
     end
    end
  
    get '/user/:id/edit' do
      
      @user = User.find_by_id(params[:id])

      erb :'user/edit'
    end
  
    post '/user' do
      
      user = User.create(params[:user])
      if user.save
        session[:user_id] = user.id
        redirect to "/user/#{user.id}"
      else
        @error = user.errors.full_messages.join(" - ")
        erb :'user/new'
      end
    end
  
    patch '/user/:id' do
      user = User.find(params[:id])
      if user.id == session[:user_id]
        user.update(params[:user])
        redirect to "/user/#{user.id}"
      else
        erb :'welcome'
      end
    end

    delete '/user/:id' do
      
      user = User.find(session[:user_id])
      if user.id == session[:user_id]
        user.destroy
        redirect "/"
      end
    end

    get '/logout' do
      session.clear
      redirect to '/login'
    end

    get '/login' do
      erb :'user/login'
    end

    post '/login' do
      user = User.find_by_email(params[:user][:email])
      if user && user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect to "/user/#{user.id}"
      else
        redirect '/login'
      end
    end
  end