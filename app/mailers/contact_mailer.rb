class ContactMailer < ActionMailer::Base
  layout 'email'

  default to: 'julio@startae.com.br', subject: 'Notícia enviada por leitor'

  def send_article(contact)
    @contact = contact
    mail from: "#{@contact.name} <#{@contact.email}>"
  end
end
