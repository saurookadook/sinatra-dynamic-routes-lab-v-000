require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number]
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    erb :say_num_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    erb :say_words
  end

  get '/operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    erb :operation
  end
end
