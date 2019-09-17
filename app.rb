require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :sentence
  end

  get '/:operation/:number1/:number2' do
    erb :operation
  end

end
