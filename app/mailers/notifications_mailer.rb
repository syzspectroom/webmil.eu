class NotificationsMailer < ActionMailer::Base

  default :to => "info@webmil.com.ua"

  def new_message(message)
   body = message.name + ": " + message.body
    mail(:subject => "Message from site #{message.subject}", :body => body, from: message.email)
  end

end