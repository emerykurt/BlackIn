
class EateryController < ApplicationController

  # 7 RESTFUL routes for eatery:

  #shows all the eateries
  get '/eatery' do
    @eats = Eatery.all 
    erb :'eatery/index' 
  end

  #new eatery form
  get '/eatery/new' do
    erb :'eatery/new'
  end

  #shows 1 eatery
  get '/eatery/:id' do
    @eatery = Eatery.find_by_id(params[:id])
    erb :'eatery/show'
  end

  #edit a eatery
  get '/eatery/:id/edit' do

  end

  #create 1 eatery
  post '/eatery' do

  end

  #update 1 eatery
  patch '/eatery/:id' do
    eatery = Eatery.new(params)
    eatery.save
    redirect to '/eatery'
  end

  #delete 1 eatery
  delete '/eatery/:id' do

  end
end