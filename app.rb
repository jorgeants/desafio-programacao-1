require 'sinatra'
require 'sinatra/activerecord'
# require './environments'

class Purchase < ActiveRecord::Base
end

get "/" do
  @purchases = Purchase.order("created_at DESC")
  erb :"purchases/index"
end