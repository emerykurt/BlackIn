
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
  
    end
  
    #edit a rating
    get '/rating/:id/edit' do
    
    end
  
    #create 1 rating
    post '/rating' do
      binding.pry 
      rating = Rating.create(customer_service: params[:customer_service], product_quality: params[:product_quality], checkout_experience: params[:checkout_experience], overall_experience: params[:overall_experience], eatery_id: params[:eatery_id], user_id: session[:user_id])

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
  end