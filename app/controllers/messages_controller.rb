class MessagesController < ApplicationController

  before_action :authenticate_user!, only: [:create]

  def create

    require 'twilio-ruby'

    account_sid = ENV["SID"]
    secret = ENV["SECRET"]

# set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, secret

    @client.account.messages.create({
                                        :from => '+12053156667',
                                        :to => '+12058375609',
                                        :body => 'Make sure you eat!',
                                    })
  end
end
