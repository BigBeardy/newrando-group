require 'sinatra'
require_relative 'random_pairing.rb'

get "/" do
	erb :index
end

# get '/names'do
# 	names = params.values
# 	pair = pair(names)
# 	erb :names, :locals=>{:pair=> pair}

# end
post '/names' do
	puts "MADE IT TO POST NAMES"
	boxes = params[:boxes]
	splitting = pair(boxes)
	# check = createcheckboxes(splitting)
erb :names, :locals=>{:boxes=>boxes, :splitting=>splitting}
end 