class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome(user)
    @user = User.find(user)
    mail(to: @user.email, subject: "Hey #{@user.first_name}, welcome to mSheltonSite!")
  end

end
