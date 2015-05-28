ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => "587",
  :domain               => "gmail.com",
  :user_name            => ENV["email_user_name"],
  :password             => ENV["email_password"],
  :authentication       => "plain",
  :enable_starttls_auto => true
}