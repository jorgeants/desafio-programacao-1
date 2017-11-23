require 'sinatra'
require 'sinatra/activerecord'
require 'csv'

class Purchase < ActiveRecord::Base
end

get '/' do
  @purchases = Purchase.all.order('created_at DESC')
  erb :'purchases/index'
end

post '/' do
	content = params[:file][:tempfile].read
	content_arr = []
	content.each_line do |line|
	    content_arr << line
	end
	puts content_arr
  
  erb :'purchases/index'
end