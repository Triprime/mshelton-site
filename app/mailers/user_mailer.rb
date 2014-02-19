class UserMailer < ActionMailer::Base
  default from: "from@example.com"


  layout "email_template"

  def welcome(user)
    @user = User.find(user)
    mail(to: @user.email, subject: "Hey #{@user.first_name}, Welcome to mSheltonSite!")
  end

end
