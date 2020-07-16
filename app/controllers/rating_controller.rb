
class RatingController < ApplicationController
  
    get '/rating/:id' do
        
        @rating = Rating.find_by_id(params[:id])
        erb :'rating/show'
      
    end
  
    get '/rating/:id/edit' do
       
        @rating = Rating.find_by_id(params[:id])
        if logged_in? && @rating.id == session[:user_id]
          erb :'rating/edit'
        else
          redirect to '/eatery'
        end
      
    end
  
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
  
    patch '/rating/:id' do
      
      rating = Rating.find_by_id(params[:id])
      if current_user.id == rating.user_id
        rating.update(params[:rating])
        redirect to "/rating/#{rating.id}" 
      else
        redirect to "/eatery"
      end
      
    end
  
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