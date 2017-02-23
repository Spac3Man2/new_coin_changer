require 'sinatra'
require "sinatra/reloader" if development?
require_relative "new_coin_changer.rb"

get '/' do

 erb :get_amount

end

post '/your_change' do

amount = params[:amount].to_i

change = new_coin_changer(amount)

erb :get_amount

end