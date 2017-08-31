# Preview all emails at http://localhost:3000/rails/mailers/oenomel_mailer
class OenomelMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    OenomelMailer.sample_email(Subscriber.first)
  end

end
