class MessagesController < ApplicationController



  def create

    require 'twilio-ruby'


# set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new ENV['SID'], ENV['SECRET']

    @client.account.messages.create(
                                        :from => '+12053156667',
                                        :to => '+12058375609',
                                        :body => 'Make sure you eat!',
                                    )
    render json: {success: "Your message was sent"}
  end
end
