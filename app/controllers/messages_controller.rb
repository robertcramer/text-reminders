class MessagesController < ApplicationController



  def create

    require 'twilio-ruby'

    account_sid = ENV['SID']
    auth_token = ENV['SECRET']


# set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
                                        :from => '++15005550006',
                                        :to => '2058375609',
                                        :body => 'Do not Forget To Eat!!',
})
    render json: {success: "Your message was sent"}
  end
end
