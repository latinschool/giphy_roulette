require 'sinatra'
require 'twilio-ruby'
require_relative 'models/TextRoulette.rb'


get '/' do
	erb #What view should you render here?
end

post '/gif' do
	#Code needed here
	#Gif should send. What code do you need for that?
	erb :index
end