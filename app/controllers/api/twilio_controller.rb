# require 'twilio-ruby'

class Api::TwilioController < ApplicationController

  def index
    account_sid = ENV["ACC_SID"]
    auth_token = ENV["AUTH_TOKEN"]

    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.messages.create(
      from: '+18473969929',
      to: params["phone"],
      body: params["textBody"]
    )
  end

end

