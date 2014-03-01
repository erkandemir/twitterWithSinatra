require 'sinatra'
require_relative "twt.rb"

  twit = Twit.new("LdZYpv8pZ9nt1fFsjffhQ","AS5wCxSVSlAghIVC1ifGOTgJR9QDCCbqy8FUxWO2Mys",
  "1496673662-8iIe9cpJ4TxIVpSPJbFp1Heh2NIUC3VMDQlrZHa","Y7zKeEe9utsxCIwzkdyVNPg6vDz6FJfNbsrTeP7CrvicC")

	get '/getuserinfo' do
  		@user = twit.getUserInfo
  		erb :userInfo
	end

  get '/getalltweet' do
      @tweets = twit.showAllTweets
      erb :userInfo
  end

  get '/getalltweet' do
      @tweets = twit.showAllTweets
      erb :userInfo
  end

  get '/showUserTweets/:screenname' do
      @tweets = twit.showUserTweets(params[:screenname])
      erb :userInfo
  end


