class UserMailer < ApplicationMailer

  default from: 'chartdevch@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://glacial-waters-09824.herokuapp.com/' # à utiliser dans la view
    mail(to: @user.email, subject: "Bienvenue à toi !")
  end
end