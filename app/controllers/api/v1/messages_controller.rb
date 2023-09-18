class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.order('RANDOM()').limit(1)
    # response_data = @messages.map do |message|
    #     {
    #         id: message.id,
    #         content: message.content
    #     }
    # end
    # render json: response_data
    render json: @messages
  end
end
