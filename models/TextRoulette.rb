class TextRoulette
	def initialize
		@account_sid = "AC0240a35c54e9fd52137b7d6b775d73e7"
		@auth_token = "61271daf7a6a79ab277ecc3f1fe3af53"
		@client = Twilio::REST::Client.new @account_sid, @auth_token

		@from = "+1201508-0094" # Your Twilio number
	end

	def get_random_gif
		@gifs = ["https://media2.giphy.com/media/3ornk2v68yO67m4Le0/200w.gif", "https://media4.giphy.com/media/xTiTnJ3BooiDs8dL7W/200w.gif", "https://media4.giphy.com/media/yWh7b6fWA5rJm/200w.gif", "https://media4.giphy.com/media/W4OSOid8XICwo/200w.gif", "https://media2.giphy.com/media/l2JJLZQmwT2c8vdAc/200w.gif", "https://media2.giphy.com/media/G6Mmo0ZThRkRi/200w.gif","https://media4.giphy.com/media/l4Ki01RIvdIQVFhqE/200w.gif", "https://media2.giphy.com/media/hm8tsCdoairlK/200w.gif", "https://media3.giphy.com/media/wkBysf5P5eCOc/200w.gif", "https://media0.giphy.com/media/l2JHPB58MjfV8W3K0/200w.gif", "https://media1.giphy.com/media/y3Kd9Sx38HDXi/200w.gif"]
		@gifs.sample
	end

	def send_random_gif
	   @client.account.messages.create(
	    :from => @from,
	    :to => "+19204890038",
	    :media_url => get_random_gif
	   )
	   puts "Sent message"
	end
end
