class YoMailer < ActionMailer::Base
  default from: "jeffthestampede@gmail.com"

  def form_email(to, subject, body)
    @body = body
    mail(:to => to, :subject => "The subject is: #{subject}")
  end


end
