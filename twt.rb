require 'twitter'

class Twit
	attr_accessor :client

	def initialize(consumer_key,consumer_secret,access_token,access_token_secret)			
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = consumer_key
		  config.consumer_secret     = consumer_secret
		  config.access_token        = access_token
		  config.access_token_secret = access_token_secret
		end	
	end

	def getUserInfo
		return user = {		
			"name"=> client.current_user.name,
			"id" => client.current_user.id
		}
	end

	def showAllFriends
		 client.friends.each { |item| puts item.name }		 
	end

	def showFollowers
	 	client.followers.each { |item| puts item.screen_name }
	end

	def showAllTweets		
	 	 client.user_timeline.each {|item| puts item.text}
	end

	def showAllUserTweets(userScreenName)					
	 	 client.user_timeline(userScreenName).each {|item| puts item.text}
	end

	def sendTweet(content)
		client.update(content)
	end
end


