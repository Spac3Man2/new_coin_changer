require 'sinatra'
require "sinatra/reloader" if development?
require_relative "new_coin_changer.rb"

get '/' do

 erb :get_amount

end

post '/your_change' do

amount = params[:change].to_i

change = new_coin_changer(amount)
#change = "results"
"{}#{amount}, #{change}"
erb :get_change, :locals => {:change => change}

end