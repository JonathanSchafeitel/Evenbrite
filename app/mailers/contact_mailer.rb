class ContactMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
  def contact
    #mail(to :"testeventbrite@yopmail.com", subject:'Sujet de test' )
    
    mail(to: 'contact@test.ch', subject: 'Bienvenue chez nous !')
  end
end
