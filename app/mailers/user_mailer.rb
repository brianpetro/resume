class UserMailer < ActionMailer::Base
  default to: "brian@plexm.com"
  default from: "change@tosender.com"

  def new_message(message)
  	@message = message
  	mail(subject: "Contact form")
  end

end
