module Api
  module V1
    class MessagesController < ApplicationController
      def index
        numb = rand(1..Message.count)
        @random_greeting = Message.find(numb).content
        render json: { success: true, data: { greeting: @random_greeting } }
      end
    end
  end
end