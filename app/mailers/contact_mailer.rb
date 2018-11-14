class ContactMailer < ApplicationMailer

    def contact(mail)
        mail(to:"#{mail}", subject:'sujet de test')
    end
end