
class RatingController < ApplicationController

    # 7 RESTFUL routes for rating:
  
    #shows all the ratings for user who is logged in.
    get '/rating' do
  
    end
  
    #new rating form
    get '/rating/new' do
      erb :'rating/new'
    end

    #shows 1 rating
    get '/rating/:id' do
      "Hello World"
      # @rating = Rating.find_by_id(params[:id])
      # erb :'rating/show'
    end
  
    #edit a rating
    get '/rating/:id/edit' do
      
    end
  
    #create 1 rating
    post '/rating' do
      rating = Rating.create(customer_service: params[:customer_service], product_quality: params[:product_quality], checkout_experience: params[:checkout_experience], overall_experience: params[:overall_experience], eatery_id: params[:eatery_id], eatery_name: params[:eatery_name], user_id: session[:user_id])
      if rating.save
        session[:user_id] = user.id
        redirect to '/rating/:id'
      else
        redirect to '/logout'
      end
      
    end
  
    #update 1 rating
    patch '/rating/:id' do
        rating = Rating.update(params)
        rating.save
        redirect to '/rating'
    end
  
    #delete 1 rating
    delete '/rating/:id' do
  
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