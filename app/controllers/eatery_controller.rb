
class EateryController < ApplicationController

  get '/eatery' do 
    @eats = Eatery.all 
    erb :'eatery/index' 
  end

  get '/eatery/new' do
    erb :'eatery/new'
  end

  get '/eatery/:id' do
    @eatery = Eatery.find_by_id(params[:id])
    erb :'eatery/show'
  end

  patch '/eatery/:id' do
    eatery = Eatery.new(params)
    eatery.save
    redirect to '/eatery'
  end

end