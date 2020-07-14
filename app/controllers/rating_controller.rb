
class RatingController < ApplicationController

    # 7 RESTFUL routes for rating:
  
    #shows all the ratings for user who is logged in.
  
    #shows 1 rating
    get '/rating/:id' do
      
      if logged_in?
        @rating = Rating.find_by_id(params[:id])
        erb :'rating/show'
      else 
         redirect to '/login'
      end 
    end
  
    #edit a rating
    get '/rating/:id/edit' do
       
      if logged_in?
        @rating = Rating.find_by_user_id(params[:id])
        erb :'rating/edit'
      else 
         redirect to '/login'
      end 
    end
  
    #create 1 rating
    post '/rating' do
      if logged_in?
        rating = Rating.create(params[:rating])
        rating.save
        redirect to "/rating/#{rating.id}"  
      else 
         redirect to '/login'
      end 
    end
  
    #update 1 rating
    patch '/rating/:id' do

      if logged_in?
        rating = Rating.find(params[:id])
        rating.update(params[:rating])
        redirect to "/rating/#{rating.id}" 
      else 
         redirect to '/login'
      end 
    end
  
    #delete 1 rating
    delete '/rating/:id' do
      
      if logged_in?
        rating = Rating.find(params[:id])
        rating.destroy
        redirect "/user/#{rating.user_id}"
      else 
         redirect to '/login'
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
        redirect to '/user/:id'
      else
        redirect '/login'
      end
    end
  end