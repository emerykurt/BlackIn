
class RatingController < ApplicationController

    # 7 RESTFUL routes for rating:
  
    #shows all the ratings for user who is logged in.
  
    #shows 1 rating
    get '/rating/:id' do
     
      @rating = Rating.find_by_id(params[:id])
      erb :'rating/show'
    end
  
    #edit a rating
    get '/rating/:id/edit' do
       
      @rating = Rating.find_by_user_id(params[:id])
      erb :'rating/edit'
    end
  
    #create 1 rating
    post '/rating' do
      
      rating = Rating.create(params[:rating])
      rating.save
      redirect to '/rating/:id'
      
    end
  
    #update 1 rating
    patch '/rating/:id' do
      
        rating = Rating.find(params[:id])
        rating.update(params[:rating])
        redirect to "/rating/#{rating.id}"
    end
  
    #delete 1 rating
    delete '/rating/:id' do
      
      rating = Rating.find(params[:id])
      rating.destroy
      redirect "/eatery"
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