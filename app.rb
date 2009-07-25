# 
#  app.rb
#  twitter_warp
#  
#  Created by Nate Todd on 2009-07-24.
#

require 'rubygems'
require 'sinatra'
require 'init'

# Set up Patron instances (https?)
# Probably can just persist this
before do
  @public_session = Patron::Session.new
  @public_session.timeout = 15
  @public_session.base_url = "http://twitter.com/"
  @public_session.username = "foo"
  @public_session.password = "bar"
end

# JSON-API GET
get '/*.json' do
  # Currently do nothing with json
  "json hit"
end

# XML-API GET
get '/*.xml' do
  uri = params["splat"].to_s + ".xml"
  response = @public_session.get(uri)
  parse_response(response.body)
end

# Non-API GET - just return the response
get '/*' do
  response = @public_session.get(params["splat"])
  response.body
end

# Non-API POST
# This code sortof works for already-authenticated posts, but login is broken
# Not sure how to handle that ATM.  Maybe persist the twitter session in the app somehow?
post '/*' do
  post_data = request.env["rack.request.form_vars"]
  response = @public_session.post(params["splat"], post_data)
  redirect '/'
end

private

  # Parse the response to do whatever you want
  def parse_response(response)
    response
  end