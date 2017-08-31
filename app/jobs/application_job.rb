class ApplicationJob < ActiveJob::Base
  queue_as :default

  def perform(subscriber)
    @subscriber = subscriber
    OenomelMailer.sample_email(@subscriber).deliver_later
  end
end
