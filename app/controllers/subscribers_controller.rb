class SubscribersController < ApplicationController


      def new
        @subscriber = Subscriber.new
      end

      def create
        @subscriber = Subscriber.new(subscriber_params)
          # respond_to do |format|
          if @subscriber.save
            redirect_to '/downloads'
            # Sends email to user when user is created.
            OenomelMailer.sample_email(@subscriber).deliver
            # SendEmailJob.set(wait: 20.seconds).perform_later(@subscriber)
            # format.html { redirect_to '/downloads', notice: 'User was successfully created.' }
            # format.json { render :show, status: :created, location: @subscriber }
          else
            flash[:notice] = "Enter an Email address to access our original content"
            redirect_to '/'
            # format.html { render :new }
            # format.json { render json: @subscriber.errors, status: :unprocessable_entity }

      end
    end
    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
end
