# require 'sendgrid-ruby'
# include SendGrid

class Api::SendgridController < ApplicationController

  def create
    # from = Email.new(email: 'test@example.com')
    # to = Email.new(email: 'evans.katherine.e@gmail.com')
    # subject = 'Sending with SendGrid is Fun'
    # content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    # mail = Mail.new(from, subject, to, content)

    # sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    # response = sg.client.mail._('send').post(request_body: mail.to_json)
    
    # @user = user
    # sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    # message_params = {:from    => ENV['gmail_username'],
    #                   :to      => @user.email,
    #                   :subject => 'Sample Mail using Mailgun API',
    #                   :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    # mg_client.send_message ENV['domain'], message_params
  end

end