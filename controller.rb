require 'sinatra'
require 'twilio-ruby'
require_relative 'models/TextRoulette.rb'

require_relative 'models/TextRoulette.rb'


get '/' do
	erb :index
end

post '/gif' do
	@gif = TextRoulette.new
	@gif.send_random_gif
	erb :index
end