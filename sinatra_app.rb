require 'sinatra'
require_relative "twt.rb"

  twit = Twit.new("LdZY342341fFsjffhQ","AS5wCxSVSlAghIVC1ifGOTgJR9AA",
  "1496673662-8iIe9cpJ4TxIVpSPJbFp1Heh2NIUC3VMDQlrZHa","Y7zKeEe9utsxCIwzkdyVNPg6vDz6FJfNbsrTeP7CrvicC")

	get '/getuserinfo' do
  		@user = twit.getUserInfo
  		erb :userInfo
	end

    get '/getalltweets' do
      @tweets = twit.showAllTweets
      erb :tweets
  end


