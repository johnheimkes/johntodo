require 'rubygems'
require 'sinatra'
require 'erb'
require 'sqlite3'
require 'active_record'
load 'models.rb'
load 'config/config.rb'

get '/' do
  @items = Item.all
  erb :index
end

post '/description' do
  
  Item.create(:description => params[:description])
  
  redirect "/"
end
