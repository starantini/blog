class SubscribersController < ApplicationController


      def new
        @subscriber = Subscriber.new
      end

      def create
        @subscriber = Subscriber.new(subscriber_params)
        if @subscriber.save
        redirect_to '/downloads'
      else
        flash[:notice] = "Enter an Email address to access our original content"
        redirect_to '/'

      end
    end
    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
end
