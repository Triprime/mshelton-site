class ContactMailer < ActionMailer::Base
  # default from: 'Matt Shelton <"matt@msheltonsite.com">'
  # bad practice to use 'noreply@taskly.com'  DONT DO IT - it is unfriendly

  # layout "email_template"

  def submission(message)
    @message = ContactMessage.find(message)
  
    mail( to: "shelton_matthew@hotmail.com", 
          subject: "#{@message.name} | #{@message.subject}", 
          from: "#{@message.email}"
          )
  end

end
