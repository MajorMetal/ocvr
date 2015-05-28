class Notifier < ApplicationMailer
	default from: 'samjwalston@gmail.com'

  def welcome(recipient)
    @user = recipient
    mail(to: "#{@user.email}", subject: 'Testing action mailer')
  end
  
end
