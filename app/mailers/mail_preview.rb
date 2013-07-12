class MailPreview < MailView
  def send_article
    contact = Contact.new(name: 'Julio', email: 'julio@gmail.com', title: 'Lorem', body: 'Lorem ipsum')
    ContactMailer.send_article(contact)
  end
end
