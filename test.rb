require 'rubygems'
require 'twilio-ruby'
account_sid = "AC0240a35c54e9fd52137b7d6b775d73e7"
auth_token = "61271daf7a6a79ab277ecc3f1fe3af53"
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+1201508-0094" # Your Twilio number
 
# friends = {
# "+14153334444" => "Curious George",
# "+14155557775" => "Boots",
# "+14155551234" => "Virgil"
# }
# friends.each do |key, value|
   client.account.messages.create(
    :from => from,
    :to => "+19204890038",
    :body => "Hey, Monkey party at 6PM. Bring Bananas!",
    :media_url => "https://media0.giphy.com/media/ly8G39g1ujpNm/200w.gif"
   )
   puts "Sent message"
