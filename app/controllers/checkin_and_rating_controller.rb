
class CheckinAndRatingController < ApplicationController

    # 7 RESTFUL routes for checkin_and_rating:
  
    #shows all the checkins and ratings 
    get '/checkin_and_rating' do
  
    end
  
    #new checkin_and_rating form
    get '/checkin_and_rating/new' do
      erb :'checkin/new'
    end

    #shows 1 checkin_and_rating
    get '/checkin_and_rating/:id' do
  
    end
  
    #edit a checkin_and_rating
    get '/checkin_and_rating/:id/edit' do
  
    end
  
    #create 1 checkin_and_rating
    post '/checkin_and_rating' do
  
    end
  
    #update 1 checkin_and_rating
    patch '/checkin_and_rating/:id' do
        checkin = CheckInAndRating.new(params)
        checkin.save
        redirect to '/checkin_and_rating'
    end
  
    #delete 1 checkin_and_rating
    delete '/checkin_and_rating/:id' do
  
    end
  end