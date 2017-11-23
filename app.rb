require 'sinatra'
require 'sinatra/activerecord'
require 'csv'

class Purchase < ActiveRecord::Base
end

get '/' do
  @purchases = Purchase.all.order('id ASC')
  erb :'purchases/index'
end

post '/' do
	content = params[:file][:tempfile].read
	content_hash = {}
	content.each_line.with_index do |line, i|
		content_hash[i] = line.gsub!(/\n/, '').force_encoding('utf-8').split(/\t/) if i != 0
	end
	content_hash.each { |key, value| Purchase.create(purchaser_name: content_hash[key][0], item_description: content_hash[key][1], item_price: content_hash[key][2], purchase_count: content_hash[key][3], merchant_address: content_hash[key][4], merchant_name: content_hash[key][5]) }

	@purchases = Purchase.all.order('id ASC')
	erb :'purchases/index'
end