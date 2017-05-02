class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  skip_before_action :verify_authenticity_token
  # protect_from_forgery with: :exception

  require 'yelp'

  @@CLIENT = Yelp::Client.new({ consumer_key: ENV['CONSUMER_KEY'],
                consumer_secret: ENV['CONSUMER_SECRET'],
                token: ENV['TOKEN'],
                token_secret: ENV['TOKEN_SECRET']
            })


end
