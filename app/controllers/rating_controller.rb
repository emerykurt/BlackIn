
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
       
        @rating = Rating.find_by_id(params[:id])
        if logged_in? && @rating.id == session[:user_id]
          erb :'rating/edit'
        else
          redirect to '/eatery'
        end
      
    end
  
    #create 1 rating
    post '/rating' do
      if logged_in?
        rating = Rating.create(params[:rating])
        rating.user_id = session[:user_id]
        rating.save
        redirect to "/rating/#{rating.id}" 
      else
        redirect to '/login'
      end 
     
    end
  
    #update 1 rating
    patch '/rating/:id' do
      
      rating = Rating.find_by_id(params[:id])
      if current_user.id == rating.user_id
        rating.update(params[:rating])
        redirect to "/rating/#{rating.id}" 
      else
        redirect to "/eatery"
      end
      
    end
  
    #delete 1 rating
    delete '/rating/:id' do
      
      if logged_in?
        rating = Rating.find(params[:id])
        if rating.user_id == session[:user_id]
          rating.destroy
        end
        redirect "/user/#{rating.user_id}"
      else 
         redirect to '/login'
      end 
    end

 
  end