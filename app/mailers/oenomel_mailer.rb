class OenomelMailer < ApplicationMailer

  default from: "oenomel.rndm@gmail.com"

  def sample_email(subscriber)
  @subscriber = subscriber
  mail(to: @subscriber.email, subject: 'Sample Email')
end
end
